from time import perf_counter_ns, sleep

class Clock:
    def __init__(self, master_freq) -> None:
        self.master_freq = master_freq
        self.master_step = 1000000000 / self.master_freq
        self.clocks = {}
        self.start_ns = perf_counter_ns()

    def add_clock(self, name, divisor):
        self.clocks[name] = self.master_step * divisor

    def __get_ticks(self) -> int:
        return int((perf_counter_ns() - self.start_ns) / (self.master_step))

    def get_clock_tick(self, name) -> int:
        return int((perf_counter_ns() - self.start_ns) / (self.clocks[name]))

class Timer:
    def __init__(self, divisor, ):
        self.divisor = divisor
        self.stage0 = 0
        self.stage1 = 0
        self.stage2 = 0
        self.target = 0
        self.enable = False

    def step(self, clocks):
        self.stage0 += clocks
        if self.stage0 < self.divisor:
            return
        self.stage0 -= self.divisor
        if not self.enable:
            return
        self.stage1 += 1
        if self.stage1 < self.target:
            return
        self.stage1 =0
        self.stage2 += 1