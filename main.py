from gooey import Gooey, GooeyParser

from spcfile import SPCFile
from spc700 import SPC700

@Gooey(program_name="SPC Disassembler", default_size=(800, 600))
def main():
    parser = GooeyParser()
    parser.add_argument('spcfile',help="SPC File",widget="FileChooser",default="test/01 Fear of the Heavens.spc")
    parser.add_argument('-pc', help="set starting offset for disassembly to x", default="0200")
    parser.add_argument('-stop', help="stop disassembly at x or end of file", default="eof")
    parser.add_argument('-a','--addr',help="enable/disable addresses", action="store_false")
    parser.add_argument('-x', '--hex',help="enable/disable opcode hex display", action="store_false")
    parser.add_argument('-r','--rel',help="enable/disable relative branch resolves", action="store_false")
    parser.add_argument('outputfile',help="Target Source File",widget="FileSaver",default="test/01 Fear of the Heavens.s")
    args = parser.parse_args()
    spcfile = SPCFile(args.spcfile)
    print(spcfile)
    spcfile.spc700.disassemble(args.outputfile,args.pc,args.stop, not args.rel, not args.hex, not args.addr)
    spcfile.extract_samples(0x1900)

if __name__ == '__main__':
    main()