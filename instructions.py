from struct import unpack

class SPC700Instruction:
    def __init__(self, offset, instruction, bytes):
        self.offset = offset
        self.instruction = instruction
        self.bytes = bytes
        self.label=""
        self.operands = None
        self.format = self.instruction["format"]
        self.formatargs = None
        self.unpackmap = {"b":"B","r":"b","w":"H","m":"H"}
        if self.instruction["bytes"] > 1:
            unpackstr = "<" + "".join([self.unpackmap[a] for a in self.instruction["args"]])
            self.operands = unpack(unpackstr,self.bytes[1:])

    def tostring(self, resolve_relative):
        result = ""
        if self.instruction["bytes"] == 1:
            result = self.format
        else:
            formatargs=[]
            argidx = 0
            for arg in self.instruction["args"]:
                if arg in ("b","w"):
                    formatargs.append(self.operands[argidx])
                elif arg=="r":
                    if resolve_relative:
                        formatargs.append(self.offset + self.operands[argidx] + self.instruction["bytes"])
                    else:
                        self.format = self.format.replace(":04x", ":02x")
                        formatargs.append(self.operands[argidx] & 0xff)
                elif arg=="m":
                    formatargs.append(self.operands[argidx] & 0x1FFF)
                    formatargs.append(self.operands[argidx] >> 13)
                argidx +=1
            result = self.format.format(*formatargs)
        return result