from dsp import DSP
from clock import Clock, Timer
from bit import bitget, bitset

class Port:
    def __init__(self, address, target, readable, writable):
        self.address = address
        self.target = target
        self.readable = readable
        self.writable = writable

class MMIO:
    def __init__(self, ram = None, ipl_ram=None, dspreg_bytes=None):
        self.RAM = bytearray(0x10000) if ram is None else ram
        self.IPLRAM = bytearray(0x40) if ipl_ram is None else ipl_ram
        self.DSP = None if dspreg_bytes is None else DSP(self.RAM, dspreg_bytes)
        # timing
        self.clock = Clock(32040 * 768)             ## 24Mhz
        self.clock.add_clock("SPC", 24)          ## 1Mhz
        self.clock.add_clock("DSP",768)             ## 32Khz
        self.timer0 = Timer(128)                    ## 8khz
        self.timer1 = Timer(128)                    ## 8khz
        self.timer2 = Timer(16)                     ## 64khz
        #internal variables
        self.iplROMEnable = True
        self.dspaddress = 0
        self.apu0 = 0
        self.apu1 = 0
        self.apu2 = 0
        self.apu3 = 0
        self.aux4 = 0
        self.aux5 = 0
        self.clockcounter = 0
        #ports
        self.ports = {
            0x00F0: Port(0x00F0, "TEST", False, True),
            0x00F1: Port(0x00F1, "CONTROL", False, True),
            0x00F2: Port(0x00F2, "DSPADDR", True, True),
            0x00F3: Port(0x00F3, "DSPDATA", True, True),
            0x00F4: Port(0x00F4, "CPUIO0", True, False), ## no CPU connected so readonly
            0x00F5: Port(0x00F5, "CPUIO1", True, False), ## no CPU connected so readonly
            0x00F6: Port(0x00F6, "CPUIO2", True, False), ## no CPU connected so readonly
            0x00F7: Port(0x00F7, "CPUIO3", True, False), ## no CPU connected so readonly
            0x00F8: Port(0x00F8, "AUXIO4", True, True),
            0x00F9: Port(0x00F9, "AUXIO5", True, True),
            0x00FA: Port(0x00FA, "T0TARGET", False, True),
            0x00FB: Port(0x00FB, "T1TARGET", False, True),
            0x00FC: Port(0x00FC, "T2TARGET", False, True),
            0x00FD: Port(0x00FD, "T0OUT", True, False),
            0x00FE: Port(0x00FE, "T1OUT", True, False),
            0x00FF: Port(0x00FF, "T2OUT", True, False),
        }

    def step(self):
        newclock = self.clock.get_clock_tick("SPC")
        clocks = newclock - self.clockcounter
        self.timer0.step(clocks)
        self.timer1.step(clocks)
        self.timer2.step(clocks)
        self.clockcounter = newclock

    def read(self, address):
        self.step()
        if address in self.ports:
            port = self.ports[address]
            if port.readable:
                if port.target == "DSPADDR":
                    return self.dspaddress
                elif port.target == "DSPDATA":
                    return self.DSP.registers[self.dspaddress]
                elif port.target == "CPUIO0":
                    return self.apu0
                elif port.target == "CPUIO1":
                    return self.apu1
                elif port.target == "CPUIO2":
                    return self.apu2
                elif port.target == "CPUIO3":
                    return self.apu3
                elif port.target == "AUXIO4":
                    return self.aux4
                elif port.target == "AUXIO5":
                    return self.aux5
                elif port.target == "T0OUT":
                    data = self.timer0.stage2
                    self.timer0.stage2 = 0
                    return data
                elif port.target == "T1OUT":
                    data = self.timer1.stage2
                    self.timer0.stage2 = 0
                    return data
                elif port.target == "T2OUT":
                    data = self.timer3.stage2
                    self.timer0.stage2 = 0
                    return data
            else:
                return 0
        else:
            return self.RAM[address]

    def write(self, address, data):
        self.step()
        if address in self.ports:
            port = self.ports[address]
            if port.writable:
                if port.target == "TEST":
                    pass ## TODO : to be implemented eventually but nice to have
                elif port.target == "CONTROL":
                    if bitget(data, 0) == 0:
                        self.timer0.enable = False
                    else:
                        self.timer0.enable = True
                        self.timer0.stage1 = 0
                        self.timer0.stage2 = 0
                    if bitget(data, 1) == 0:
                        self.timer1.enable = False
                    else:
                        self.timer1.enable = True
                        self.timer1.stage1 = 0
                        self.timer1.stage2 = 0
                    if bitget(data, 2) == 0:
                        self.timer2.enable = False
                    else:
                        self.timer2.enable = True
                        self.timer2.stage1 = 0
                        self.timer2.stage2 = 0
                    if bitget(data, 4) == 1:
                        self.apu0 = 0
                        self.apu1 = 0
                    if bitget(data, 5) == 1:
                        self.apu2 = 0
                        self.apu3 = 0
                    self.iplROMEnable = bitget(data, 7) == 1
                elif port.target == "AUXIO4":
                    self.aux4 = data
                elif port.target == "AUXIO5":
                    self.aux5 = data
                elif port.target == "T0TARGET":
                    self.timer0.target = data
                elif port.target == "T1TARGET":
                    self.timer1.target = data
                elif port.target == "T2TARGET":
                    self.timer2.target = data
            else:
                pass
        else:
            self.RAM[address] = data