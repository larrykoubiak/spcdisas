
from spcfile import SPCFile
from spc700 import SPC700

def main(spcpath, outputpath):
    spcfile = SPCFile(spcpath)
    print(spcfile)
    spc700 = SPC700()
    spc700.disassemble(spcfile,outputpath)

if __name__ == '__main__':
    main(r"test/01 Fear of the Heavens.spc", "test/01 Fear of the Heavens.s")