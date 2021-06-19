from json import load
from struct import unpack
from instructions import SPC700Instruction, InstructionMeta
import instructions
from dsp import DSP

bitget = lambda x, b : (x & (1 << b)) >> b
bitset = lambda x, b, v : x | (1 << b) if v == 1 else x & ~(1 << b)
class PSW:
    def __init__(self, byte):
        self.value = byte

    @property
    def C(self):
        return bitget(self.value, 0)

    @property
    def Z(self):
        return bitget(self.value, 1)

    @property
    def I(self):
        return bitget(self.value, 2)

    @property
    def H(self):
        return bitget(self.value, 3)

    @property
    def B(self):
        return bitget(self.value, 4)

    @property
    def P(self):
        return bitget(self.value, 5)

    @property
    def V(self):
        return bitget(self.value, 6)

    @property
    def N(self):
        return bitget(self.value, 7)


    @C.setter
    def C(self, value):
        self.value = bitset(self.value, 0, value) 

    @Z.setter
    def Z(self, value):
        self.value = bitset(self.value, 1, value)

    @I.setter
    def I(self, value):
        self.value = bitset(self.value, 2, value)

    @H.setter
    def H(self, value):
        self.value = bitset(self.value, 3, value)

    @B.setter
    def B(self, value):
        self.value = bitset(self.value, 4, value)

    @P.setter
    def P(self, value):
        self.value = bitset(self.value, 5, value)

    @V.setter
    def V(self, value):
        self.value = bitset(self.value, 6, value)

    @N.setter
    def N(self, value):
        self.value = sbitset(self.value, 7, value)

class SPC700(metaclass=InstructionMeta):
    def __init__(self, reg_bytes=None, ram=None, dspreg_bytes=None, ipl_ram=None):
        with open("config/spc700_instructions.json","r") as f:
            self.__instructions = load(f)
        self.init_instructions()
        self.PC = 0x0200
        self.A = 0x00
        self.X = 0x00
        self.Y = 0x00
        self.S = 0x01EF
        self.P = PSW(0)
        if reg_bytes is not None:
            self.__parsebytes(reg_bytes)
        self.RAM = bytearray(0x10000) if ram is None else ram
        self.IPLRAM = bytearray(0x40) if ipl_ram is None else ipl_ram
        self.dsp = None if dspreg_bytes is None else DSP(self.RAM, dspreg_bytes)

    @property
    def YA(self):
        return self.Y << 8 + self.A
    
    @YA.setter
    def YA(self, value):
        self.Y = value >> 8
        self.A = value & 0xFF

    @property
    def instructions(self):
        return self.__instructions

    def __parsebytes(self, reg_bytes):
        fmt = "HBBBH"
        self.PC, self.A, self.X, self.Y, self.SP = unpack(fmt, reg_bytes[0:8])
        self.PSW = PSW(reg_bytes[8])
        self.PSW.P = 1

    def init_instructions(self):
        for i in range(len(self.__instructions)):
            fn = "lambda self=self : self.instruction" + self.__instructions[i]["instruction"] + "("
            if len(self.__instructions[i]["instruction_args"]) == 0:
                fn += ")"
            else:
                for a in self.__instructions[i]["instruction_args"].split(','):
                    if a in ('A','P','S','X','Y'):
                        fn += "self." + a + ","
                    elif a.startswith("fp"):
                        fn += "self.algorithm" + a[3:-1] + ","
                    elif len(a) >= 2 and a[1] == 'F':
                        fn += "self.P." + a[0] + a[2:] + ","
                    else:
                        fn += a + ","
                fn = fn[:-1] + ")"
            print(fn)
            fp = eval(fn)
            self.__instructions[i]["fp"] = fp

    def decodePC(self):
        opcode = self.RAM[self.PC]
        instruction = self.__instructions[opcode]
        decinc = SPC700Instruction(
            self.PC,
            instruction,
            self.RAM[self.PC: self.PC + instruction["bytes"]])
        self.PC += instruction["bytes"]
        return decinc

    def __repr__(self) -> str:
        result =  "+---------------------------------------+\n"
        result += "+            SPC700 REGISTERS           +\n"
        result += "+---------------------------------------+\n"
        result += "|  PC  |  A |  X |  Y |  SP  | NVPCHIZC |\n"
        result += "+---------------------------------------+\n"
        fmt =  "+ {:04X} | {:02X} | {:02X} | {:02X} | {:04X} | {:08b} |\n"
        result += fmt.format(self.PC,self.A,self.X, self.Y, self.SP, self.PSW.value)
        result += "+---------------------------------------+\n"
        result += str(self.dsp)
        return result
