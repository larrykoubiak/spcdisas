bitget = lambda x, b : (x & (1 << b)) >> b
bitset = lambda x, b, v : x | (1 << b) if v == 1 else x & ~(1 << b)