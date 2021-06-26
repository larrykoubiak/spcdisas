class Port:
    def __init__(self, address, target):
        self.address = address
        self.target = target

class MMIO:
    def __init__(self, ram = None, ipl_ram=None):
        self.RAM = bytearray(0x10000) if ram is None else ram
        self.IPLRAM = bytearray(0x40) if ipl_ram is None else ipl_ram
        self.ports = {
            0x00F0: Port(0x00F0, "TEST"),
            0x00F1: Port(0x00F1, "CONTROL"),
            0x00F2: Port(0x00F2, "DSPADDR"),
            0x00F3: Port(0x00F3, "DSPDATA"),
            0x00F4: Port(0x00F4, "CPUIO0"),
            0x00F5: Port(0x00F5, "CPUIO1"),
            0x00F6: Port(0x00F6, "CPUIO2"),
            0x00F7: Port(0x00F7, "CPUIO3"),
            0x00F8: Port(0x00F8, "AUXIO4"),
            0x00F9: Port(0x00F9, "AUXIO5"),
            0x00FA: Port(0x00FA, "T0TARGET"),
            0x00FB: Port(0x00FB, "T1TARGET"),
            0x00FC: Port(0x00FC, "T2TARGET"),
            0x00FD: Port(0x00FD, "T0OUT"),
            0x00FE: Port(0x00FE, "T1OUT"),
            0x00FF: Port(0x00FF, "T2OUT"),
        }
