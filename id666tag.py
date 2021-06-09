from struct import unpack
from json import load

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
        result =  "+--------------------------------------------------------------+\n"
        result += "+                         ID666 TAGS                           +\n"
        result += "+--------------------------------------------------------------+\n"
        result += "| SONG TITLE  | {:^46} |\n".format(self.song_title)
        result += "+--------------------------------------------------------------+\n"
        result += "| GAME TITLE  | {:^46} |\n".format(self.game_title)
        result += "+--------------------------------------------------------------+\n"
        result += "| SONG ARTIST | {:^46} |\n".format(self.artist_of_song)
        result += "+--------------------------------------------------------------+\n"
        return result

class ExtendedID666Tag:
    def __init__(self, bytes=None):
        self.values = {}
        with open('config/id666_extended_tags.json','r') as f:
            self.tags = load(f)
        if bytes is not None:
            self.__parsebytes(bytes)

    def __parsebytes(self, bytes):
        pad = lambda x : ((x >> 2) << 2) + (4 if (x % 4) > 0 else 0)
        chunk_type, chunksize = unpack("<4sI",bytes[0:8])
        if chunk_type==b"xid6":
            index = 8
            while index < (chunksize+8):
                id, type = unpack("<BB",bytes[index:index+2])
                index += 2
                key = "0x{:02x}".format(id)
                tag = self.tags[key]
                if type == 0: ## data
                    self.values[tag["description"]] = unpack(tag["unpack"],bytes[index:index+2])[0]
                    index +=2
                elif type == 1: ## string
                    length = unpack("<H", bytes[index:index+2])[0]
                    index +=2
                    format = tag["unpack"].format(length)
                    self.values[tag["description"]] = unpack(format,bytes[index:index + length])[0].decode("ascii").split('\0', 1)[0]
                    index += pad(length)
                elif type == 4: ## integer
                    length = unpack("<H", bytes[index:index+2])[0]
                    index +=2
                    self.values[tag["description"]]= unpack("<I", bytes[index:index+length])[0]
                    index += length
                self.tags[key] = tag

    def __repr__(self):
        result = "+" + "-" * 130 + "+\n"
        result += "+{:^130}+\n".format("EXTENDED ID666 TAGS")
        result += "+" + "-" * 130 + "+\n"
        for name, value in self.values.items():
            result += "| {:^26} | {:100}|\n".format(name, str(value))
            result += "+" + "-" * 130 + "+\n"
        return result