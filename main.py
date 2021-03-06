from gooey import Gooey, GooeyParser

from spcfile import SPCFile
from spc700 import SPC700

@Gooey(program_name="SPC Disassembler", default_size=(800, 600),terminal_font_family='Courier New')
def main():
    parser = GooeyParser()
    parser.add_argument('spcfile',help="SPC File",widget="FileChooser")
    parser.add_argument('-pc', help="set starting offset for disassembly to x", default="0200")
    parser.add_argument('-stop', help="stop disassembly at x or end of file", default="eof")
    parser.add_argument('-a','--addr',help="enable/disable addresses", action="store_false")
    parser.add_argument('-x', '--hex',help="enable/disable opcode hex display", action="store_false")
    parser.add_argument('-r','--rel',help="enable/disable relative branch resolves", action="store_false")
    args = parser.parse_args()
    spcfile = SPCFile(args.spcfile)
    print(spcfile)
    spcfile.disassemble(args.pc,args.stop, not args.rel, not args.hex, not args.addr)
    # spcfile.run(args.pc)
    spcfile.extract_samples()

if __name__ == '__main__':
    main()