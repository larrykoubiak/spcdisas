from struct import unpack
from id666tag import ID666Tag

class SPCFile:
    def __init__(self, filepath=None):
        self.header = ""
        self.header_flags = 0
        self.version = 0
        self.pc = 0
        self.a = 0
        self.x = 0
        self.y = 0
        self.psw = 0
        self.sp = 0
        self.id666 = None
        self.spcram = bytearray()
        if filepath is not None:
            self.__parsefile(filepath)

    def __parsefile(self, filepath):
        f = open(filepath, 'rb')
        fields = unpack("<33s3BBHBBBBBH", f.read(0x2E))
        self.header= fields[0].decode()
        self.header_flags = fields[3]
        self.version = fields[4]
        self.pc = fields[5]
        self.a = fields[6]
        self.x = fields[7]
        self.y = fields[8]
        self.psw = fields[9]
        self.sp = fields[10]
        self.id666 = ID666Tag(f.read(0xD2))
        self.spcram = f.read(0x10000)
        f.close()

    def __repr__(self):
        result = "%s PC: 0x%04X A: 0x%02X X: 0x%02X Y: 0x%02X PSW: %s SP: 0x%02X" % (
            self.header, self.pc, self.a, self.x, self.y, "{0:08b}".format(self.psw), self.sp)
        result += "\n" + str(self.id666)
        return result