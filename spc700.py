from json import load
from struct import unpack
from script import DecodedInstruction
from dsp import DSP


class SPC700:
    def __init__(self, reg_bytes=None, ram=None, dspreg_bytes=None, ipl_ram=None):
        with open("config/spc700_instructions.json","r") as f:
            self.__instructions = load(f)
        self.PC = 0x0200
        self.A = 0x00
        self.X = 0x00
        self.Y = 0x00
        self.SP = 0x01EF
        self.PSW = 0x00
        if reg_bytes is not None:
            self.__parsebytes(reg_bytes)
        self.RAM = bytearray(0x10000) if ram is None else ram
        self.IPLRAM = bytearray(0x40) if ipl_ram is None else ipl_ram
        self.dsp = None if dspreg_bytes is None else DSP(self.RAM, dspreg_bytes)

    def __parsebytes(self, reg_bytes):
        fmt = "HBBBHB"
        self.PC, self.A, self.X, self.Y, self.SP, self.PSW = unpack(fmt, reg_bytes)

    def decodePC(self, resolve_relative):
        opcode = self.RAM[self.PC]
        instruction = self.__instructions[opcode]
        decinc = DecodedInstruction(
            self.PC,
            instruction,
            self.RAM[self.PC: self.PC + instruction["bytes"]],
            resolve_relative)
        self.PC += instruction["bytes"]
        return decinc

    def __repr__(self) -> str:
        result =  "+---------------------------------------+\n"
        result += "+            SPC700 REGISTERS           +\n"
        result += "+---------------------------------------+\n"
        result += "|  PC  |  A |  X |  Y |  SP  |    PSW   |\n"
        result += "+---------------------------------------+\n"
        fmt =  "+ {:04X} | {:02X} | {:02X} | {:02X} | {:04X} | {:08b} |\n"
        result += fmt.format(self.PC,self.A,self.X, self.Y, self.PSW, self.SP)
        result += "+---------------------------------------+\n"
        result += str(self.dsp)
        return result