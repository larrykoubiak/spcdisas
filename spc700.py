from json import load
from struct import unpack
import instructions
from instructions import SPC700Instruction
from dsp import DSP

class PSW:
    def __init__(self, byte):
        self.value = byte

    @property
    def C(self):
        return (self.value & 0b00000001) >> 0

    @property
    def Z(self):
        return (self.value & 0b00000010) >> 1

    @property
    def I(self):
        return (self.value & 0b00000100) >> 2

    @property
    def H(self):
        return (self.value & 0b00001000) >> 3

    @property
    def B(self):
        return (self.value & 0b00010000) >> 4

    @property
    def P(self):
        return (self.value & 0b00100000) >> 5

    @property
    def V(self):
        return (self.value & 0b01000000) >> 6

    @property
    def N(self):
        return (self.value & 0b10000000) >> 7

    @C.setter
    def C(self, value):
        self.value | (value << 0)

    @Z.setter
    def Z(self, value):
        self.value | (value << 1)

    @I.setter
    def I(self, value):
        self.value | (value << 2)

    @H.setter
    def H(self, value):
        self.value | (value << 3)

    @B.setter
    def B(self, value):
        self.value | (value << 4)

    @P.setter
    def P(self, value):
        self.value | (value << 5)

    @V.setter
    def V(self, value):
        self.value | (value << 6)

    @N.setter
    def N(self, value):
        self.value | (value << 7)

class SPC700:
    def __init__(self, reg_bytes=None, ram=None, dspreg_bytes=None, ipl_ram=None):
        with open("config/spc700_instructions.json","r") as f:
            self.__instructions = load(f)
        for ins in self.__instructions:
            ins["fp"] = getattr(instructions, "instruction" + ins["instruction"])
        self.PC = 0x0200
        self.A = 0x00
        self.X = 0x00
        self.Y = 0x00
        self.SP = 0x01EF
        self.PSW = PSW(0)
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

    def __parsebytes(self, reg_bytes):
        fmt = "HBBBH"
        self.PC, self.A, self.X, self.Y, self.SP = unpack(fmt, reg_bytes[0:8])
        self.PSW = PSW(reg_bytes[8]) 

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