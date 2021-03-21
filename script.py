from struct import unpack

class DecodedInstruction:
    def __init__(self, offset, instruction, bytes, resolve_relative):
        self.offset = offset
        self.instruction = instruction
        self.bytes = bytes
        self.assembly = bytes
        self.resolve_relative = resolve_relative
        self.label=""

    def __repr__(self):
        result = ""
        formatstr = self.instruction["format"]
        if self.instruction["bytes"] == 1:
            result = formatstr
        else:
            operands = unpack("<" + self.instruction["unpack"],self.bytes[1:])
            formatargs=[]
            argidx = 0
            for arg in self.instruction["args"]:
                if arg in ("b","w"):
                    formatargs.append(operands[argidx])
                elif arg=="r":
                    if self.resolve_relative:
                        formatargs.append(self.offset + operands[argidx] + self.instruction["bytes"])
                    else:
                        formatstr = formatstr.replace(":04x", ":02x")
                        formatargs.append(operands[argidx] & 0xff)
                elif arg=="m":
                    formatargs.append(operands[argidx] & 0x1FFF)
                    formatargs.append(operands[argidx] >> 13)
                argidx +=1
            result = formatstr.format(*formatargs)
        return result

class Script:
    def __init__(self):
        self.instructions = {}