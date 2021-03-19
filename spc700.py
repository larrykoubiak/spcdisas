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

    def disassemble(self, spcfile: SPCFile, targetfile, pc, stop, rel, hex, addr):
        self.PC = int(pc, 16)
        self.A = spcfile.a
        self.X = spcfile.x
        self.Y = spcfile.y
        self.SP = spcfile.sp
        self.PSW = spcfile.psw
        self.RAM = spcfile.spcram
        self.resolve_relative = rel
        self.display_hex_vals = hex
        self.display_addr = addr
        with open(targetfile, "w") as o:
            while self.PC < (0x10000 if stop=="eof" else int(stop,16)):
                o.write(self.decodePC() + "\n")

    def decodePC(self):
        result = ""
        opcode = self.RAM[self.PC]
        instruction = self.__instructions[opcode]
        formatstr = instruction["format"]
        if instruction["bytes"] == 1:
            result = formatstr
        else:
            operands = unpack("<" + instruction["unpack"],self.RAM[self.PC+1: self.PC+instruction["bytes"]])
            formatargs=[]
            argidx = 0
            for arg in instruction["args"]:
                if arg in ("b","w"):
                    formatargs.append(operands[argidx])
                elif arg=="r":
                    if self.resolve_relative:
                        formatargs.append(self.PC + operands[argidx] + instruction["bytes"])
                    else:
                        formatstr = formatstr.replace(":04x", ":02x")
                        formatargs.append(operands[argidx] & 0xff)
                elif arg=="m":
                    formatargs.append(operands[argidx] & 0x1FFF)
                    formatargs.append(operands[argidx] >> 13)
                argidx +=1
            result = formatstr.format(*formatargs)
        if self.display_hex_vals:
            hexstr = ""
            for i in range(instruction["bytes"]):
                hexstr += "{:02x} ".format(self.RAM[self.PC+i])
            result = hexstr + (' ' * (10-(instruction["bytes"] * 3))) + result
        if self.display_addr:
            result = "{:04x}: ".format(self.PC) + result 
        self.PC += instruction["bytes"]
        return result
