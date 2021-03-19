from json import load
from struct import unpack
from spcfile import SPCFile

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

    def disassemble(self, spcfile: SPCFile, targetfile):
        self.PC = 0X0200 # spcfile.pc
        self.A = spcfile.a
        self.X = spcfile.x
        self.Y = spcfile.y
        self.SP = spcfile.sp
        self.PSW = spcfile.psw
        self.RAM = spcfile.spcram
        with open(targetfile, "w") as o:
            while self.PC < 0x10000:
                o.write(self.decodePC() + "\n")

    def decodePC(self):
        result = ""
        opcode = self.RAM[self.PC]
        instruction = self.__instructions[opcode]
        if instruction["bytes"] == 1:
            result = instruction["format"]
        else:
            operands = unpack("<" + instruction["unpack"],self.RAM[self.PC+1: self.PC+instruction["bytes"]])
            formatargs=[]
            argidx = 0
            for arg in instruction["args"]:
                if arg in ("b","w"):
                    formatargs.append(operands[argidx])
                elif arg=="r":
                    formatargs.append(self.PC + operands[argidx] + instruction["bytes"])
                elif arg=="m":
                    formatargs.append(operands[argidx] & 0x1FFF)
                    formatargs.append(operands[argidx] >> 13)
                argidx +=1
            result = instruction["format"].format(*formatargs)
        result = "{:04X}: ".format(self.PC) + result 
        self.PC += instruction["bytes"]
        return result
