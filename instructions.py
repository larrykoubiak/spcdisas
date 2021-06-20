from struct import unpack
import sys
import types
from bit import bitget, bitset

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
        self.P.C |= bitget(data, bit)
    elif mode == 1:
        self.P.C |= ~bitget(data, bit)
    elif mode == 2:
        self.P.C &= bitget(data, bit)
    elif mode == 3:
        self.P.C &= ~bitget(data, bit)
    elif mode == 4:
        self.P.C ^= bitget(data, bit)
    elif mode == 5:
        self.P.C = bitget(data, bit)
    elif mode == 6:
        data = bitset(data,bit, self.P.C)
        self.write(address, data)
    elif mode == 7:
        data = bitset(data, bit, ~bitget(data, bit))
        self.write(address, data)
    return

def instructionAbsoluteBitSet(self, bit, value):
    address = self.fetch()
    data = self.load(address)
    data = bitset(data, bit, value)
    self.store(address, data)
    return
    
def instructionAbsoluteRead(self, op, target):
    return
def instructionAbsoluteModify(self, op):
    return
def instructionAbsoluteWrite(self, data):
    return
def instructionAbsoluteIndexedRead(self, op, index):
    return
def instructionAbsoluteIndexedWrite(self, index):
    return
def instructionBranch(self, take):
    return
def instructionBranchBit(self, bit, match):
    return
def instructionBranchNotDirect(self):
    return
def instructionBranchNotDirectDecrement(self):
    return
def instructionBranchNotDirectIndexed(self, index):
    return
def instructionBranchNotYDecrement(self):
    return
def instructionBreak(self):
    return
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
    flag = int(value)
    return
def instructionImmediateRead(self, op, target):
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
    return
def instructionWait(self):
    return

def algorithmADC(self, x, y):
    z = x + y + self.P.C
    self.P.C = z > 0xFF
    self.P.Z = (z & 0xFF) == 0
    self.P.H = (x ^ y ^ z) & 0x10
    self.P.V = ~(x ^ y) & (x ^ z) & 0x80
    self.P.N = z & 0x80
    return z

def algorithmAND(self, x, y):
    x &= y
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x

def algorithmASL(self, x):
    self.P.C = x & 0x80
    x <<= 1
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x

def algorithmCMP(self, x, y):
    z = x - y
    self.P.C = z >= 0
    self.P.Z = (z & 0xFF) == 0
    self.P.N = z & 0x80
    return x

def algorithmDEC(self, x):
    x -= 1
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x

def algorithmEOR(self, x, y):
    x ^= y
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x

def algorithmINC(self, x):
    x += 1
    self.P.Z = x == 0
    self.P.N = x & 0x80
    return x

def algorithmLD(self, x, y):
    self.P.Z = y == 0
    self.P.N = y & 0x80
    return y

def algorithmLSR(self, x):
    return
def algorithmOR(self, x, y):
    return
def algorithmROL(self, x):
    return
def algorithmROR(self, x):
    return
def algorithmSBC(self, x, y):
    return
def algorithmADW(self, x, y):
    return
def algorithmCPW(self, x, y):
    return
def algorithmLDW(self, x, y):
    return
def algorithmSBW(self, x, y):
    return
