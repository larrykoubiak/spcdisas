from time import perf_counter_ns, sleep

class Clock:
    def __init__(self, master_freq) -> None:
        self.master_freq = master_freq
        self.master_step = 1000000000 / master_freq
        self.clocks = {}
        self.start_ns = perf_counter_ns()

    def add_clock(self, name, divisor):
        self.clocks[name] = divisor

    def get_ticks(self) -> int:
        return int((perf_counter_ns() - self.start_ns) / (self.master_step))
