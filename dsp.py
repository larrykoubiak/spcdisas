from json import load

class DSP:
    def __init__(self, regbytes=None):
        with open("dsp_registers.json","r") as f:
            self.registers = [0] * 128
            self.__regnames = load(f)
            self.namedregisters = {}

            if regbytes is not None:
                self.load_from_bytes(regbytes)

    def load_from_bytes(self, regbytes):
        for i in range(128):
            hexreg = "{:02X}".format(i)
            self.registers[i] = regbytes[i]
            if hexreg in self.__regnames:
                regname = self.__regnames[hexreg]["name"]
                self.namedregisters[regname] = self.registers[i]

    def __repr__(self) -> str:
        result =  "+---------------------------------------------------------------------------------------+\n"
        result += "+                                     DSP REGISTER                                      +\n"
        result += "+---------------------------------------------------------------------------------------+\n"
        result += "| VOICE | VOL_L | VOL_R | PIT_L | PIT_H | SRCN  | ADSR1 | ADSR2 | GAIN  | ENVX  | OUTX  |\n"
        result += "+---------------------------------------------------------------------------------------+\n"
        voicefmt ="| {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} | {:>5} |\n"
        for v in range(8):
            voicevals = self.registers[(v * 16):(v * 16) + 10]
            result += voicefmt.format(v,*voicevals)
        result += "+---------------------------------------------------------------------------------------+\n"
        return result