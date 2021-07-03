from riff import WAVFileChunk, FormatChunk, DataChunk, SamplerChunk, SampleLoop

class BRRHeader:
    def __init__(self, byte):
        self.end = 0
        self.end = (byte & 0x01) > 0
        self.loop = (byte & 0x02) > 0
        self.filter = (byte & 0x0C) >> 2
        self.range = (byte  >> 4) & 0x0F

class BRR:
    def __init__(self, ram=None):
        self.ram = ram
        self.pcmsamples = None
        self.p2 = 0
        self.p1 = 0
        self.loop = 0

    def decode(self,offset):
        self.pcmsamples = []
        self.p2 = 0
        self.p1 = 0
        idx = offset
        header = BRRHeader(0)
        while not header.end and idx < (len(self.ram)-8):
            header = BRRHeader(self.ram[idx])
            self.loop = header.loop
            idx +=1
            for i in range(8):
                self.decode_brrsample((self.ram[idx+i] >> 4), header)
                self.decode_brrsample((self.ram[idx+i] & 0x0F), header)
            idx += 8
        self.appy_gaussian_filter()
    
    def decode_brrsample(self, brrsample,header):
        signed_brr = brrsample if brrsample < 8 else brrsample -16
        if header.range < 12:
            sample = (signed_brr << header.range) >> 1
        else:
            sample = 2048 if brrsample < 8 else -2048
        sample += self.get_brr_prediction(header.filter)
        sample = max(min(sample,0x7FFF),-0x8000)
        if sample > 0x3fff:
            sample -= 0x8000
        elif sample < -0x4000:
            sample += 0x8000
        self.p2 = self.p1
        self.p1 = sample
        self.pcmsamples.append(sample)

    def get_brr_prediction(self, filter):
        p = 0
        if filter == 0:
            return p
        elif filter == 1:
            p = self.p1
            p -= (self.p1 >> 4)
        elif filter == 2:
            p = self.p1 << 1
            p += (-(self.p1 + (self.p1 << 1))) >> 5
            p -= self.p2
            p += self.p2 >> 4
        elif filter == 3:
            p = self.p1 << 1
            p += (-(self.p1 + (self.p1 << 2) + (self.p1 << 3))) >> 6
            p -= self.p2
            p += (self.p2 + (self.p2 << 1)) >> 4
        return p

    def appy_gaussian_filter(self):
        prev = ((372  + 1304) * self.pcmsamples[0]) + (372 * self.pcmsamples[1]) ## First sample
        for i in range(1,len(self.pcmsamples)-1):
            k0 = 372 * (self.pcmsamples[i-1] + self.pcmsamples[i+1])
            k = 1304 * self.pcmsamples[i]
            self.pcmsamples[i-1] = prev >> 0x0B
            prev = k0 + k
        last = (372 * self.pcmsamples[-2]) + ((372 + 1304) * self.pcmsamples[-1])
        self.pcmsamples[-2] = prev >> 0x0B
        self.pcmsamples[-1] = last  >> 0x0B

    def to_wave(self, looppoint=None):
        wav = WAVFileChunk()
        wav.addchunk(FormatChunk(1,1,32040,16))
        wav.addchunk(DataChunk(self.pcmsamples,"h",2))
        if looppoint is not None:
            sampler = SamplerChunk(32040)
            sampler.addloop(SampleLoop(0, 0, looppoint, len(self.pcmsamples) * 2))
            wav.addchunk(sampler)
        return wav.to_bytes()

if __name__ == '__main__':
    from spcfile import SPCFile
    f = SPCFile("S:\\VGM\\Packs\\spcsets\\Secret of Mana (Seiken Densetsu 2) [sd2]\\sd2-01.spc")
    f.extract_samples()