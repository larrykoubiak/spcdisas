from spc700 import SPC700
from struct import unpack
from id666tag import ID666Tag
from brr import BRR
import os
class SPCFile:
    def __init__(self, filepath=None):
        self.header = ""
        self.header_flags = 0
        self.version = 0
        self.spc700 = None
        self.id666 = None
        if filepath is not None:
            self.__parsefile(filepath)

    def __parsefile(self, filepath):
        f = open(filepath, 'rb')
        fields = unpack("<33s4B", f.read(0x25))
        self.header= fields[0].decode()
        self.header_flags = fields[3]
        self.version = fields[4]
        spcregbytes = f.read(0x09)
        self.id666 = ID666Tag(f.read(0xD2))
        self.spc700 = SPC700(spcregbytes, f.read(0x10000))
        f.close()

    def extract_samples(self, diroffset):
        offset = diroffset
        brr = BRR(self.spc700.RAM)
        sample_offset,loop_offset = unpack("<HH",self.spc700.RAM[offset:offset+4])
        offset +=4
        track_id = 0
        while sample_offset > 0:
            if sample_offset != 0xFFFF:
                brr.decode(sample_offset)
                loopoint = int(((loop_offset - sample_offset) / 9) * 16)
                path = os.path.join("test", self.id666.game_title, self.id666.song_title)
                os.makedirs(path, exist_ok=True)
                filename = os.path.join(path,"sample_{:02d}.wav".format(track_id))
                with open(filename,'wb') as f:
                    f.write(brr.to_wave(loopoint))
            sample_offset,loop_offset = unpack("<HH",self.spc700.RAM[offset:offset+4])
            offset +=4
            track_id += 1

    def __repr__(self):
        result = "%s PC: 0x%04X A: 0x%02X X: 0x%02X Y: 0x%02X PSW: %s SP: 0x%02X" % (
            self.header, 
            self.spc700.PC, 
            self.spc700.A, 
            self.spc700.X, 
            self.spc700.Y, 
            "{0:08b}".format(self.spc700.PSW), 
            self.spc700.SP)
        result += "\n" + str(self.id666)
        return result