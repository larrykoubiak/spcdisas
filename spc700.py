from json import load
from struct import unpack
from script import Script, DecodedInstruction
from dsp import DSP


class SPC700:
    def __init__(self, reg_bytes=None, ram=None, dspreg_bytes=None):
        with open("spc700_instructions.json","r") as f:
            self.__instructions = load(f)
        self.PC = 0x0200
        self.A = 0x00
        self.X = 0x00
        self.Y = 0x00
        self.SP = 0x01EF
        self.PSW = 0x00
        if reg_bytes is not None:
            self.load_from_bytes(reg_bytes)
        self.RAM = bytearray(0x10000) if ram is None else ram
        self.dsp = None if dspreg_bytes is None else DSP(self.RAM, dspreg_bytes)

    def load_from_bytes(self, reg_bytes):
        fmt = "HBBBHB"
        self.PC, self.A, self.X, self.Y, self.SP, self.PSW = unpack(fmt, reg_bytes)

    def disassemble(self, targetfile, pc, stop, rel, hex, addr):
        self.PC = int(pc, 16)
        script = Script()
        while self.PC < (0x10000 if stop=="eof" else int(stop,16)):
            decinc = self.decodePC(rel)
            script.instructions[decinc.offset] = decinc
        script.export(targetfile, addr, hex)

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