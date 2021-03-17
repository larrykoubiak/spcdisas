from struct import unpack

class ID666Tag:
    def __init__(self, bytes=None):
        self.song_title = ""
        self.game_title = ""
        self.dumper_name = ""
        self.comments = ""
        self.dump_date = ""
        self.fadeout_start = 0
        self.fadeout_length = 0
        self.artist_of_song = ""
        self.channel_disables = 0
        self.emulator = 0
        if bytes is not None:
            self.__parsebytes(bytes)

    def __parsebytes(self, bytes):
        if bytes[0x82]==0:
            fmt = "32s32s16s32s11s3s5s32sBB45s"
        else:
            fmt = "32s32s16s32sI7s3s4s32sBB46s"
        fields = unpack(fmt, bytes)
        self.song_title = fields[0].decode().split('\0', 1)[0]
        self.game_title = fields[1].decode().split('\0', 1)[0]
        self.dumper_name = fields[2].decode().split('\0', 1)[0]
        self.comments = fields[3].decode().split('\0', 1)[0]
        self.dump_date = fields[4].decode().split('\0', 1)[0]
        self.fadeout_start = fields[5].decode().split('\0', 1)[0]
        self.fadeout_length = fields[6].decode().split('\0', 1)[0]
        self.artist_of_song = fields[7].decode().split('\0', 1)[0]
        self.channel_disables = fields[8]
        self.emulator = fields[9]

    def __repr__(self):
        return str(self.__dict__)