from struct import unpack
import sys
import types
from bit import bitget, bitset, int8

bitget = lambda x, b : (x & (1 << b)) >> b
class SPC700Instruction:
    def __init__(self, offset = None, instruction=None, bytes=None):
        self.offset = offset
        self.bytes = bytes
        self.label=""
        self.args = None
        self.operands = None
        self.format = None
        self.formatargs = None
        self.instruction = None
        self.unpackmap = {"b":"B","r":"b","w":"H","m":"H"}
        if instruction is not None:
            self.parse_instruction(instruction)

    def parse_instruction(self, instruction):
        self.args = instruction["args"]
        self.format = instruction["format"]
        self.instruction = instruction["fp"]
        if instruction["bytes"] == 1:
            return
        else:
            unpackstr = "<" + "".join([self.unpackmap[a] for a in self.args])
            operands = unpack(unpackstr,self.bytes[1:])
            self.operands = []
            for argidx in range(len(self.args)):
                arg = self.args[argidx]
                val = operands[argidx]
                if arg in ("b","w"):
                    self.operands.append(val)
                elif arg=="r":
                    self.operands.append(self.offset + operands[argidx] + instruction["bytes"])
                elif arg=="m":
                    self.operands.append(operands[argidx] & 0x1FFF)
                    self.operands.append(operands[argidx] >> 13)

    def tostring(self, resolve_relative):
        result = ""
        if len(self.bytes) == 1:
            result = self.format
        else:
            formatargs = self.operands[:]
            if not resolve_relative and "r" in self.args:
                self.format = self.format.replace(":04x", ":02x")
                argidx = 0 if self.args=="r" else 1
                formatargs[argidx] = (formatargs[argidx] - (self.offset + len(self.bytes))) & 0xFF
            result = self.format.format(*formatargs)
        return result

class InstructionMeta(type):
    def __new__(cls, name, bases, dct):
        module = sys.modules[__name__]
        for name in dir(module):
            function = getattr(module, name)
            if isinstance(function, types.FunctionType):
                dct[function.__name__] = function
        return type.__new__(cls, name, bases, dct)

def instructionAbsoluteBitModify(self, mode):
    address = self.fetch()
    address |= self.fetch() << 8
    bit = address >> 13
    address &= 0x1fff
    data = self.read(address)
    if mode == 0:
        self.idle()
        self.P.C |= bitget(data, bit)
    elif mode == 1:
        self.idle()
        self.P.C |= ~bitget(data, bit)
    elif mode == 2:
        self.P.C &= bitget(data, bit)
    elif mode == 3:
        self.P.C &= ~bitget(data, bit)
    elif mode == 4:
        self.idle()
        self.P.C ^= bitget(data, bit)
    elif mode == 5:
        self.P.C = bitget(data, bit)
    elif mode == 6:
        self.idle()
        data = bitset(data,bit, self.P.C)
        self.write(address, data)
    elif mode == 7:
        data = bitset(data, bit, ~bitget(data, bit))
        self.write(address, data)

def instructionAbsoluteBitSet(self, bit, value):
    address = self.fetch()
    data = self.load(address)
    data = bitset(data, bit, value)
    self.store(address, data)
    
def instructionAbsoluteRead(self, op, target):
    address = self.fetch()
    address |= self.fetch() << 8
    data = self.read(address)
    reg = getattr(self, target)
    setattr(self, target, op(reg, data))

def instructionAbsoluteModify(self, op):
    address = self.fetch()
    address |= self.fetch() << 8
    data = self.read(address)
    self.write(address, op(data))

def instructionAbsoluteWrite(self, data):
    address = self.fetch()
    address |= self.fetch() << 8
    self.read(address)
    self.write(address, data)

def instructionAbsoluteIndexedRead(self, op, index):
    address = self.fetch()
    address |= self.fetch() << 8
    self.idle()
    reg = getattr(self, index)
    data = self.read(address + reg)
    self.A = op(self.A, data)

def instructionAbsoluteIndexedWrite(self, index):
    address = self.fetch()
    address |= self.fetch() << 8
    self.idle()
    reg = getattr(self, index)
    self.read(address + reg)
    self.write(address + reg, self.A)

def instructionBranch(self, take):
    data = self.fetch()
    if not take:
        return
    self.idle()
    self.idle()
    self.PC += data & 0xFF

def instructionBranchBit(self, bit, match):
    address = self.fetch()
    data = self.load(address)
    self.idle()
    displacement = self.fetch()
    if bitget(data,bit) != int(match):
        return
    self.idle()
    self.idle()
    self.PC += int8(displacement)

def instructionBranchNotDirect(self):
    address = self.fetch()
    data = self.load(address)
    self.idle()
    displacement = self.fetch()
    if(self.A == data):
        return
    self.idle()
    self.idle()
    self.PC += int8(displacement)

def instructionBranchNotDirectDecrement(self):
    address = self.fetch()
    data = self.load(address) -1
    self.store(address, data)
    displacement = self.fetch()
    if(data == 0):
        return
    self.idle()
    self.idle()
    self.PC += int8(displacement)

def instructionBranchNotDirectIndexed(self, index):
    address = self.fetch()
    self.idle()
    reg = getattr(self, index)
    data = self.load(address + reg)
    self.idle()
    displacement = self.fetch()
    if(self.A == data):
        return
    self.idle()
    self.idle()
    self.PC += int8(displacement)

def instructionBranchNotYDecrement(self):
    self.read(self.PC)
    self.idle()
    displacement = self.fetch()
    self.Y -= 1
    if(self.Y == 0):
        return
    self.idle()
    self.idle()
    self.PC += int8(displacement)

def instructionBreak(self):
    self.read(self.PC)
    self.push(self.PC >> 8)
    self.push(self.PC >> 0)
    self.push(self.P.value)
    self.idle()
    address = self.read(0xffde + 0)
    address |= self.read(0xffde + 1) << 8
    self.PC = address
    self.P.I = 0
    self.P.B = 1

def instructionCallAbsolute(self):
    return
def instructionCallPage(self):
    return
def instructionCallTable(self, vector):
    return
def instructionComplementCarry(self):
    return
def instructionDecimalAdjustAdd(self):
    return
def instructionDecimalAdjustSub(self):
    return
def instructionDirectRead(self, op, target):
    return
def instructionDirectModify(self, op):
    return
def instructionDirectWrite(self, data):
    return
def instructionDirectDirectCompare(self, op):
    return
def instructionDirectDirectModify(self, op):
    return
def instructionDirectDirectWrite(self):
    return
def instructionDirectImmediateCompare(self, op):
    return
def instructionDirectImmediateModify(self, op):
    return
def instructionDirectImmediateWrite(self):
    return
def instructionDirectCompareWord(self, op):
    return
def instructionDirectReadWord(self, op):
    return
def instructionDirectModifyWord(self, adjust):
    return
def instructionDirectWriteWord(self):
    return
def instructionDirectIndexedRead(self, op, target, index):
    return
def instructionDirectIndexedModify(self, op, index):
    return
def instructionDirectIndexedWrite(self, data, index):
    return
def instructionDivide(self):
    return
def instructionExchangeNibble(self):
    return
def instructionFlagSet(self, flag, value):
    self.P.value = bitset(self.P.value, flag, int(value))
    return
def instructionImmediateRead(self, op, target):
    data = self.fetch()
    reg = getattr(self, target)
    setattr(self, target, op(reg, data))
    return
def instructionImpliedModify(self, op, target):
    return
def instructionIndexedIndirectRead(self, op, index):
    return
def instructionIndexedIndirectWrite(self, data, index):
    return
def instructionIndirectIndexedRead(self, op, index):
    return
def instructionIndirectIndexedWrite(self, data, index):
    return
def instructionIndirectXRead(self, op):
    return
def instructionIndirectXWrite(self, data):
    return
def instructionIndirectXIncrementRead(self, data):
    return
def instructionIndirectXIncrementWrite(self, data):
    return
def instructionIndirectXCompareIndirectY(self, op):
    return
def instructionIndirectXWriteIndirectY(self, op):
    return
def instructionJumpAbsolute(self):
    return
def instructionJumpIndirectX(self):
    return
def instructionMultiply(self):
    return
def instructionNoOperation(self):
    return
def instructionOverflowClear(self):
    return
def instructionPull(self, data):
    return
def instructionPullP(self):
    return
def instructionPush(self, data):
    return
def instructionReturnInterrupt(self):
    return
def instructionReturnSubroutine(self):
    return
def instructionStop(self):
    return
def instructionTestSetBitsAbsolute(self, set):
    return
def instructionTransfer(self, start, end):
    self.read(self.PC)
    src = getattr(self, start)
    setattr(self, end, src)
    if start == "S":
        return
    self.P.Z = src == 0
    self.P.N = src & 0x80

def instructionWait(self):
    return

def algorithmADC(self, x, y):
    z = x + y + self.P.C
    self.P.C = z > 0xFF
    self.P.Z = (z & 0xFF) == 0
    self.P.H = (x ^ y ^ z) & 0x10
    self.P.V = ~(x ^ y) & (x ^ z) & 0x80
    self.P.N = z & 0x80
    return z & 0xFF

def algorithmAND(self, x, y):
    x &= y
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmASL(self, x):
    self.P.C = x & 0x80
    x <<= 1
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmCMP(self, x, y):
    z = x - y
    self.P.C = z >= 0
    self.P.Z = (z & 0xFF) == 0
    self.P.N = z & 0x80
    return x & 0xFF

def algorithmDEC(self, x):
    x -= 1
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmEOR(self, x, y):
    x ^= y
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmINC(self, x):
    x += 1
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmLD(self, x, y):
    self.P.Z = y == 0
    self.P.N = y & 0x80
    return y & 0xFF

def algorithmLSR(self, x):
    self.P.C = x & 0x01
    x >>= 1
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmOR(self, x, y):
    x |= y
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmROL(self, x):
    carry = self.P.C
    self.P.C = x & 0x80
    x = x << 1 | carry
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmROR(self, x):
    carry = self.P.C
    self.P.C = x & 0x01
    x = carry << 7 | x >> 1
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmSBC(self, x, y):
    return self.algorithmADC(x, ~y)

def algorithmADW(self, x, y):
    self.P.C = 0
    z  = self.algorithmADC(x & 0xFF, y & 0xFF)
    z |= self.algorithmADC(x >> 8, y >> 8) << 8
    self.P.Z = z == 0
    return z & 0xFFFF

def algorithmCPW(self, x, y):
    z = x - y
    self.P.C = z >= 0
    self.P.Z = (z & 0xFFFF) == 0
    self.P.N = z & 0x8000
    return x & 0xFFFF

def algorithmLDW(self, x, y):
    self.P.Z = y == 0
    self.P.N = y & 0x8000
    return y & 0xFFFF

def algorithmSBW(self, x, y):
    self.P.C = 1
    z  = self.algorithmSBC(x & 0xFF, y & 0xFF)
    z |= self.algorithmSBC(x >> 8, y >> 8) << 8
    self.P.Z = z == 0
    return z
