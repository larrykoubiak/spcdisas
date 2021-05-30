from struct import pack

class RIFFChunk:
    def __init__(self, id, size):
        self.ChunkID = id
        self.ChunkDataSize = size
        self.PackFormat = "<4sI"

    def to_bytes(self):
        return pack(self.PackFormat,
            self.ChunkID,
            self.ChunkDataSize
        )

class SampleLoop:
    def __init__(self, id, type, start, end, fraction=0, playcount=0):
        self.CuePointID = id
        self.Type = type
        self.Start = start
        self.End = end
        self.Fraction = fraction
        self.PlayCount = playcount
        self.PackFormat = "IIIIII"

    def to_bytes(self):
        return pack(
            self.PackFormat,
            self.CuePointID,
            self.Type,
            self.Start,
            self.End,
            self.Fraction,
            self.PlayCount
        )


class WAVFileChunk(RIFFChunk):
    def __init__(self):
        super().__init__(b"RIFF", 4)
        self.RIFFType = b"WAVE"
        self.PackFormat += "4s"
        self.WaveChunks = []

    def addchunk(self, chunk: RIFFChunk):
        self.WaveChunks.append(chunk)
        self.ChunkDataSize += chunk.ChunkDataSize + 8

    def to_bytes(self):
        bytes = pack(
            self.PackFormat,
            self.ChunkID,
            self.ChunkDataSize,
            self.RIFFType
        )
        for c in self.WaveChunks:
            bytes += c.to_bytes()
        return bytes

class FormatChunk(RIFFChunk):
    def __init__(self, codec,channels,samplerate,bitspersample):
        super().__init__(b"fmt ", 16)
        self.CompressionCode = codec
        self.NumberOfChannels = channels
        self.SampleRate = samplerate
        self.AvgBytesPerSecond = samplerate * (bitspersample >> (3 * channels))
        self.BlockAlign = bitspersample >> (3 * channels)
        self.BitsPerSample = bitspersample
        self.PackFormat += "HHIIHH"

    def to_bytes(self):
         return pack(self.PackFormat,
            self.ChunkID,
            self.ChunkDataSize,
            self.CompressionCode,
            self.NumberOfChannels,
            self.SampleRate,
            self.AvgBytesPerSecond,
            self.BlockAlign,
            self.BitsPerSample
        )

class DataChunk(RIFFChunk):
    def __init__(self, data,samplefmt,samplebytelen):
        super().__init__(b"data", len(data) * samplebytelen)
        self.Data = data
        self.PackFormat += "{}{}".format(len(data),samplefmt) 

    def to_bytes(self):
        return pack(self.PackFormat,
            self.ChunkID,
            self.ChunkDataSize,
            *self.Data
        )

class SamplerChunk(RIFFChunk):
    def __init__(self, samplerate):
        super().__init__(b"smpl", 36)
        self.Manufacturer = 0
        self.Product = 0
        self.SamplePeriod = int(1000000000 / samplerate)
        self.MIDIUnityNote = 60
        self.MIDIPitchFraction = 0
        self.SMPTEFormat = 0
        self.SMPTEOffset = 0
        self.NumSampleLoops = 0
        self.SamplerData = 0
        self.SampleLoops = []
        self.PackFormat += "IIIIIIIII"

    def addloop(self, loop: SampleLoop):
        self.SampleLoops.append(loop)
        self.NumSampleLoops += 1
        self.ChunkDataSize += 24

    def to_bytes(self):
            bytes = pack(
                self.PackFormat,
                self.ChunkID,
                self.ChunkDataSize,
                self.Manufacturer,
                self.Product,
                self.SamplePeriod,
                self.MIDIUnityNote,
                self.MIDIPitchFraction,
                self.SMPTEFormat,
                self.SMPTEOffset,
                self.NumSampleLoops,
                self.SamplerData
            )
            for l in self.SampleLoops:
                bytes += l.to_bytes()
            return bytes