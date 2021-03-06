from spc700 import SPC700
from script import Script
from struct import unpack
from id666tag import ID666Tag, ExtendedID666Tag

import os
class SPCFile:
    def __init__(self, filepath=None):
        self.header = ""
        self.header_flags = 0
        self.version = 0
        self.spc700 = None
        self.id666 = None
        self.extended666 = None
        self.path = None
        if filepath is not None:
            self.path = filepath
            self.__parsefile()

    def __parsefile(self):
        with open(self.path, 'rb') as f:
            headerbytes = f.read(0x25)
            spcregbytes = f.read(0x09)
            id666bytes = f.read(0xD2)
            ram = f.read(0x10000)
            dspregbytes = f.read(0xC0)
            iplram = f.read(0x40)
            extendedid666bytes = f.read()
        self.__parserheader(headerbytes)
        self.spc700 = SPC700(spcregbytes, bytearray(ram), dspregbytes, iplram)
        self.id666 = ID666Tag(id666bytes)
        self.extended666 = ExtendedID666Tag(extendedid666bytes)

    def __parserheader(self, headerbytes):
        fields = unpack("<33s4B", headerbytes)
        self.header= fields[0].decode()
        self.header_flags = fields[3]
        self.version = fields[4]

    def disassemble(self, pc, stop, rel, hex, addr):
        self.spc700.PC = int(pc, 16)
        script = Script()
        while self.spc700.PC < (0x10000 if stop=="eof" else int(stop,16)):
            decinc = self.spc700.decodePC()
            script.instructions[decinc.offset] = decinc
        song_folder = "" if "OST Track" not in self.extended666.values else "{:02d} - ".format(self.extended666.values["OST Track"])
        song_folder += self.id666.song_title
        path = os.path.join(
            "test",
            self.id666.game_title,
            song_folder
        )
        filename = os.path.basename(self.path).replace('.spc','.s')
        os.makedirs(path, exist_ok=True)
        script.export(os.path.join(path, filename), addr, hex, rel)

    def run(self, pc):
        self.spc700.PC = int(pc, 16)
        while True:
            self.spc700.step()

    def extract_samples(self):
        song_folder = "" if "OST Track" not in self.extended666.values else "{:02d} - ".format(self.extended666.values["OST Track"])
        song_folder += self.id666.song_title
        path = os.path.join(
            "test",
            self.id666.game_title,
            song_folder
        )
        os.makedirs(path, exist_ok=True)
        for track_id in range(64):
            sample = self.spc700.io.DSP.sample_2_wav(track_id)
            if sample is not None and sample != b'\0':
                filename = os.path.join(path,"sample_{:02d}.wav".format(track_id))
                with open(filename,'wb') as f:
                    f.write(sample)

    def __repr__(self):
        result = "{}\n{}\n{}\n{}".format(
            self.header,
            str(self.id666),
            str(self.extended666),
            str(self.spc700),
        )
        return result