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
                    line += "{:10}".format(" ".join(["{:02x}".format(b) for b in decinc.bytes]))
                line += decinc.tostring(resolve_relative)
                o.write(line + "\n")