from spc700 import SPC700
from struct import unpack
from id666tag import ID666Tag

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
        self.spc700 = SPC700(spcregbytes, f.read(0x10000), f.read(0x80))
        f.close()

    def extract_samples(self):
        for track_id in range(64):
            sample = self.spc700.dsp.sample_2_wav(track_id)
            if sample is not None and sample != b'\0':
                path = os.path.join("test", self.id666.game_title, self.id666.song_title)
                os.makedirs(path, exist_ok=True)
                filename = os.path.join(path,"sample_{:02d}.wav".format(track_id))
                with open(filename,'wb') as f:
                    f.write(sample)

    def __repr__(self):
        result = "{}\n{}\n{}".format(
            self.header,
            str(self.id666),
            str(self.spc700)
        )
        return result