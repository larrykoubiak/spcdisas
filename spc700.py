from json import load

from spcfile import SPCFile
from script import Script, DecodedInstruction

class SPC700:
    def __init__(self):
        with open("spc700_instructions.json","r") as f:
            self.__instructions = load(f)
        self.PC = 0x0200
        self.A = 0x00
        self.X = 0x00
        self.Y = 0x00
        self.SP = 0x01EF
        self.PSW = 0x00
        self.RAM = bytearray(0x10000)

    def disassemble(self, spcfile: SPCFile, targetfile, pc, stop, rel, hex, addr):
        self.PC = int(pc, 16)
        self.A = spcfile.a
        self.X = spcfile.x
        self.Y = spcfile.y
        self.SP = spcfile.sp
        self.PSW = spcfile.psw
        self.RAM = spcfile.spcram
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
