from json import load
from brr import BRR
from struct import unpack

class DSP:
    def __init__(self, ram=None, regbytes=None):
        with open("config/dsp_registers.json","r") as f:
            self.registers = [0] * 128
            self.__regnames = load(f)
            self.namedregisters = {}
            if regbytes is not None:
                self.__parsebytes(regbytes)
            self.RAM = ram

    def __parsebytes(self, regbytes):
        for i in range(0x80):
            hexreg = "{:02X}".format(i)
            self.registers[i] = regbytes[i]
            if hexreg in self.__regnames:
                regname = self.__regnames[hexreg]["name"]
                self.namedregisters[regname] = self.registers[i]

    def sample_2_wav(self,sample_id):
        diroffset = self.namedregisters["DIR"] << 8
        offset = diroffset + (sample_id * 4)
        brr = BRR(self.RAM)
        sample_offset,loop_offset = unpack("<HH",self.RAM[offset:offset+4])
        if sample_offset != 0xFFFF and sample_offset !=0:
            brr.decode(sample_offset)
            loopoint = int(((loop_offset - sample_offset) / 9) * 16)
            return brr.to_wave(loopoint)
        else:
            return b'\0'

    def __repr__(self) -> str:
        result =  "+-----------------------------------------------------------------------------------------------+\n"
        result += "+                                      DSP VOICE REGISTERS                                      +\n"
        result += "+-----------------------------------------------------------------------------------------------+\n"
        result += "| VOICE | VOL_L | VOL_R | PIT_L | PIT_H | SRCN  | ADSR1 | ADSR2 | GAIN  | ENVX  | OUTX  | COEFF |\n"
        result += "+-----------------------------------------------------------------------------------------------+\n"
        voicefmt ="| {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} |\n"
        for v in range(8):
            voicevals = self.registers[(v * 16):(v * 16) + 10]
            result += voicefmt.format(v,*voicevals,self.registers[(v * 16 + 15)])
        result += "+-----------------------------------------------------------------------------------------------+\n\n"
        result += "+------------------------------------------------------------------------------------------------------------------------------------------+\n"
        result += "+                                                           DSP GLOBAL REGISTERS                                                           +\n"
        result += "+------------------------------------------------------------------------------------------------------------------------------------------+\n"
        result += "| MVOL_L | MVOL_R | EVOL_L | EVOL_R |   KON    |   KOF    |   FLG    |   ENDX   |  EFB  |   PMON   |   NON    |   EON    | DIR | ESA | EDL |\n"
        result += "+------------------------------------------------------------------------------------------------------------------------------------------+\n"
        globalfmt="| {:>6} | {:>6} | {:>6} | {:>6} | {:08b} | {:08b} | {:08b} | {:08b} | {:>5} | {:08b} | {:08b} | {:08b} |  {:02X} |  {:02X} |  {:02X} |\n"
        globalregs = [self.registers[i] for i in range(0xC,0x8C,0x10)] + [self.registers[i] for i in range(0xD,0x8D,0x10)]
        globalregs.pop(9)
        result += globalfmt.format(*globalregs)
        result += "+------------------------------------------------------------------------------------------------------------------------------------------+\n"

        return result