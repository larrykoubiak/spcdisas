class Script:
    def __init__(self):
        self.instructions = {}

    def export(self, targetfile, display_addr, display_hex_vals, resolve_relative):
        with open(targetfile, "w",newline="\n") as o:
            for offset, decinc in self.instructions.items():
                line = ""
                if display_addr:
                    line += "{:04x}: ".format(offset)
                if display_hex_vals:
                    hexstr = ""
                    for i in range(len(decinc.bytes)):
                        hexstr += "{:02x} ".format(decinc.bytes[i])
                    line += hexstr + (' ' * (10-(len(decinc.bytes) * 3)))
                line += decinc.tostring(resolve_relative)
                o.write(line + "\n")