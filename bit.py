from struct import unpack

bitget = lambda x, b : (x & (1 << b)) >> b
bitset = lambda x, b, v : x | (1 << b) if v == 1 else x & ~(1 << b)
int8 = lambda x : 256 - x if x > 127 else x