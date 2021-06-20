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
    regtarget = getattr(self, target)
    setattr(self, target, op(regtarget, data))

def instructionAbsoluteModify(self, op):
    address = self.fetch()
    address |= self.fetch() << 8
    data = self.read(address)
    self.write(address, op(data))

def instructionAbsoluteWrite(self, data):
    address = self.fetch()
    address |= self.fetch() << 8
    self.read(address)
    regdata = getattr(self, data)
    self.write(address, regdata)

def instructionAbsoluteIndexedRead(self, op, index):
    address = self.fetch()
    address |= self.fetch() << 8
    self.idle()
    regindex = getattr(self, index)
    data = self.read(address + regindex)
    self.A = op(self.A, data)

def instructionAbsoluteIndexedWrite(self, index):
    address = self.fetch()
    address |= self.fetch() << 8
    self.idle()
    regindex = getattr(self, index)
    self.read(address + regindex)
    self.write(address + regindex, self.A)

def instructionBranch(self):
    data = self.fetch()
    self.idle()
    self.idle()
    self.PC += int8(data)

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

def instructionBranchFlag(self, flag, take):
    data = self.fetch()
    bit = bitget(self.P.value, flag)
    if bit != take:
        return
    self.idle()
    self.idle()
    self.PC += int8(data)

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
    regindex = getattr(self, index)
    data = self.load(address + regindex)
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
    self.push(self.PC & 0xFF)
    self.push(self.P.value)
    self.idle()
    address = self.read(0xffde + 0)
    address |= self.read(0xffde + 1) << 8
    self.PC = address
    self.P.I = 0
    self.P.B = 1

def instructionCallAbsolute(self):
    address = self.fetch()
    address |= self.fetch() << 8
    self.idle()
    self.push(self.PC >> 8)
    self.push(self.PC & 0xFF)
    self.idle()
    self.idle()
    self.PC = address

def instructionCallPage(self):
    address = self.fetch()
    self.idle()
    self.push(self.PC >> 8)
    self.push(self.PC & 0xFF)
    self.idle()
    self.PC = 0xFF00 | address

def instructionCallTable(self, vector):
    self.read(self.PC)
    self.idle()
    self.push(self.PC >> 8)
    self.push(self.PC & 0xFF)
    self.idle()
    address = 0xFFDE - (vector << 1)
    pc = self.read(address + 0)
    pc |= self.read(address + 1) << 8
    self.PC = pc

def instructionComplementCarry(self):
    self.read(self.PC)
    self.idle()
    self.P.C = ~self.P.C

def instructionDecimalAdjustAdd(self):
    self.read(self.PC)
    self.idle()
    if self.P.C == 1 or self.A > 0x99:
        self.A += 0x60
        self.P.C = 1
    if self.P.H == 1 or (self.A & 15) > 0x09:
        self.A += 0x06
    self.P.Z = self.A == 0
    self.P.N = self.A & 0x80

def instructionDecimalAdjustSub(self):
    self.read(self.PC)
    self.idle()
    if self.P.C == 0 or self.A > 0x99:
        self.A -= 0x60
        self.P.C = 0
    if self.P.H == 0 or (self.A & 15) > 0x09:
        self.A -= 0x06
    self.P.Z = self.A == 0
    self.P.N = self.A & 0x80

def instructionDirectRead(self, op, target):
    address = self.fetch()
    data = self.load(address)
    regtarget = getattr(self, target)
    setattr(self,target,op(regtarget, data))

def instructionDirectModify(self, op):
    address = self.fetch()
    data = self.load(address)
    self.store(address, op(data))

def instructionDirectWrite(self, data):
    address = self.fetch()
    self.load(address)
    regdata = getattr(self, data)
    self.store(address, regdata)

def instructionDirectDirectCompare(self, op):
    source = self.fetch()
    rhs = self.load(source)
    target = self.fetch()
    lhs = self.load(target)
    lhs = op(lhs, rhs)
    self.idle()
  
def instructionDirectDirectModify(self, op):
    source = self.fetch()
    rhs = self.load(source)
    target = self.fetch()
    lhs = self.load(target)
    lhs = op(lhs, rhs)
    self.store(target, lhs)

def instructionDirectDirectWrite(self):
    source = self.fetch()
    data = self.load(source)
    target = self.fetch()
    self.store(target, data)

def instructionDirectImmediateCompare(self, op):
    immediate = self.fetch()
    address = self.fetch()
    data = self.load(address)
    data = op(data, immediate)
    self.idle()

def instructionDirectImmediateModify(self, op):
    immediate = self.fetch()
    address = self.fetch()
    data = self.load(address)
    data = op(data, immediate)
    self.store(address, data)

def instructionDirectImmediateWrite(self):
    immediate = self.fetch()
    address = self.fetch()
    self.load(address)
    self.store(address, immediate)

def instructionDirectCompareWord(self, op):
    address = self.fetch()
    data = self.load(address + 0)
    data |= self.load(address + 1) << 8
    self.YA = op(self.YA, data)

def instructionDirectReadWord(self, op):
    address = self.fetch()
    data = self.load(address + 0)
    self.idle()
    data |= self.load(address + 1) << 8
    self.YA = op(self.YA, data)

def instructionDirectModifyWord(self, adjust):
    address = self.fetch()
    data = self.load(address + 0) + adjust
    self.store(address + 0, data >> 0)
    data += self.load(address + 1) << 8
    self.store(address + 1, data >> 8)
    self.P.Z = data == 0
    self.P.N = data & 0x8000

def instructionDirectWriteWord(self):
    address = self.fetch()
    self.load(address + 0)
    self.store(address + 0, self.A)
    self.store(address + 1, self.Y)

def instructionDirectIndexedRead(self, op, target, index):
    address = self.fetch()
    self.idle()
    regindex = getattr(self, index)
    data = self.load(address + regindex)
    regdst = getattr(self, target)
    setattr(self,target,op(regdst, data))

def instructionDirectIndexedModify(self, op, index):
    address = self.fetch()
    self.idle()
    regindex = getattr(self, index)
    data = self.load(address + regindex)
    self.store(address + regindex, op(data))

def instructionDirectIndexedWrite(self, data, index):
    address = self.fetch()
    self.idle()
    regindex = getattr(self, index)
    self.load(address + regindex)
    self.store(address + regindex, data)

def instructionDivide(self):
    self.read(self.PC)
    self.idle()
    self.idle()
    self.idle()
    self.idle()
    self.idle()
    self.idle()
    self.idle()
    self.idle()
    self.idle()
    self.idle()
    ya = self.YA
    # overflow set if quotient >= 256
    self.P.H = (self.Y & 0xF) >= (self.X & 0xF)
    self.P.V = self.Y >= self.X
    if self.Y < (self.X << 1):
        self.A = int(ya / self.X) & 0xFF
        self.Y = ya % self.X
    else:
        # otherwise the quotient won't fit into V + A
        # this emulates the odd behavior of the S-SMP in this case
        self.A = 255 - (int((ya - (self.X << 9)) / (256 - self.X)) & 0XFF)
        self.Y = self.X  + ((ya - (self.X << 9)) % (256 - self.X))
    self.P.Z = self.A == 0
    self.P.N = self.A & 0x80

def instructionExchangeNibble(self):
    self.read(self.PC)
    self.idle()
    self.idle()
    self.idle()
    self.A = (self.A >> 4 | (self.A << 4) & 0xFF)
    self.P.Z = self.A == 0
    self.P.N = self.A & 0x80

def instructionFlagSet(self, flag, value):
    self.P.value = bitset(self.P.value, flag, int(value))

def instructionImmediateRead(self, op, target):
    data = self.fetch()
    reg = getattr(self, target)
    setattr(self, target, op(reg, data))

def instructionImpliedModify(self, op, target):
    self.read(self.PC)
    regtarget = getattr(self, target)
    setattr(self, target, op(regtarget))

def instructionIndexedIndirectRead(self, op, index):
    indirect = self.fetch()
    self.idle()
    regindex = getattr(self, index)
    address = self.load(indirect + regindex + 0)
    address |= self.load(indirect + regindex + 1) << 8
    data = self.read(address)
    self.A = op(self.A, data)

def instructionIndexedIndirectWrite(self, data, index):
    indirect = self.fetch()
    self.idle()
    regindex = getattr(self, index)
    address = self.load(indirect + regindex + 0)
    address |= self.load(indirect + regindex + 1) << 8
    self.read(address)
    regdata = getattr(self, data)
    self.write(address, regdata)

def instructionIndirectIndexedRead(self, op, index):
    indirect = self.fetch()
    self.idle()
    address = self.load(indirect + 0)
    address |= self.load(indirect + 1) << 8
    regindex = getattr(self, index)
    data = self.read(address + regindex)
    self.A = op(self.A, data)

def instructionIndirectIndexedWrite(self, data, index):
    indirect = self.fetch()
    address = self.load(indirect + 0)
    address |= self.load(indirect + 1) << 8
    self.idle()
    regindex = getattr(self, index)
    self.read(address + regindex)
    regdata = getattr(self, data)
    self.write(address + regindex, regdata)

def instructionIndirectXRead(self, op):
    self.read(self.PC)
    data = self.load(self.X)
    self.A = op(self.A, data)

def instructionIndirectXWrite(self, data):
    self.read(self.PC)
    self.load(self.X)
    regdata = getattr(self, data)
    self.store(self.X, regdata)

def instructionIndirectXIncrementRead(self, data):
    self.read(self.PC)
    data = self.load(self.X)
    self.X += 1
    self.idle()  # quirk: consumes extra idle cycle compared to most read instructions
    regdata = getattr(self, data)
    self.P.Z = regdata == 0
    self.P.N = regdata & 0x80

def instructionIndirectXIncrementWrite(self, data):
    self.read(self.PC)
    self.idle()  # quirk: consumes extra idle cycle compared to most read instructions
    regdata = getattr(self, data)
    self.store(self.X, regdata)
    self.X += 1

def instructionIndirectXCompareIndirectY(self, op):
    self.read(self.PC)
    rhs = self.load(self.Y)
    lhs = self.load(self.X)
    lhs = op(lhs, rhs)
    self.idle()

def instructionIndirectXWriteIndirectY(self, op):
    self.read(self.PC)
    rhs = self.load(self.Y)
    lhs = self.load(self.X)
    lhs = op(lhs, rhs)
    self.store(self.X, lhs)

def instructionJumpAbsolute(self):
    address = self.fetch()
    address |= self.fetch() << 8
    self.PC = address

def instructionJumpIndirectX(self):
    address = self.fetch()
    address |= self.fetch() << 8
    self.idle()
    pc = self.read(address + self.X + 0)
    pc |= self.read(address + self.X + 1)
    self.PC = pc
    
def instructionMultiply(self):
    self.read(self.PC)
    self.idle()
    self.idle()
    self.idle()
    self.idle()
    self.idle()
    self.idle()
    self.idle()
    ya = self.Y * self.A
    self.A = ya & 0xFF
    self.Y  = ya >> 8
    self.P.Z = self.Y == 0
    self.P.N = self.Y & 0x80

def instructionNoOperation(self):
    self.read(self.PC)

def instructionOverflowClear(self):
    self.read(self.PC)
    self.P.H = 0
    self.P.V = 0

def instructionPull(self, data):
    self.read(self.PC)
    self.idle()
    setattr(self, data, self.pull())
    
def instructionPullP(self):
    self.read(self.PC)
    self.idle()
    self.P.value = self.pull()

def instructionPush(self, data):
    self.read(self.PC)
    regdata = getattr(self, data)
    self.push(regdata)
    self.idle()

def instructionReturnInterrupt(self):
    self.read(self.PC)
    self.idle()
    self.P.value = self.pull()
    address = self.pull()
    address |= self.pull() << 8
    self.PC = address

def instructionReturnSubroutine(self):
    self.read(self.PC)
    self.idle()
    address = self.pull()
    address |= self.pull() << 8
    self.PC = address

def instructionStop(self):
    self.stop = True
    while(self.stop):
        self.read(self.PC)
        self.idle()

def instructionTestSetBitsAbsolute(self, set):
    address = self.fetch()
    address |= self.fetch() << 8
    data = self.read(address)
    self.P.Z = (self.A - data) == 0
    self.P.N = (self.A - data) & 0x80
    self.read(address)
    self.write(address, data | self.A if set else data & ~self.A)

def instructionTransfer(self, start, end):
    self.read(self.PC)
    regfrom = getattr(self, start)
    setattr(self, end, regfrom)
    if start == "S":
        return
    self.P.Z = regfrom == 0
    self.P.N = regfrom & 0x80

def instructionWait(self):
    self.wait = True
    while(self.wait):
        self.read(self.PC)
        self.idle()

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
    self.P.Z = (x & 0XFF) == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmASL(self, x):
    self.P.C = x & 0x80
    x <<= 1
    self.P.Z = (x & 0XFF) == 0
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
    self.P.Z = (x & 0XFF) == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmEOR(self, x, y):
    x ^= y
    self.P.Z = (x & 0XFF) == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmINC(self, x):
    x += 1
    self.P.Z = (x & 0XFF) == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmLD(self, x, y):
    self.P.Z = y == 0
    self.P.N = y & 0x80
    return y & 0xFF

def algorithmLSR(self, x):
    self.P.C = x & 0x01
    x >>= 1
    self.P.Z = (x & 0XFF) == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmOR(self, x, y):
    x |= y
    self.P.Z = (x & 0XFF) == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmROL(self, x):
    carry = self.P.C
    self.P.C = x & 0x80
    x = x << 1 | carry
    self.P.Z = (x & 0XFF) == 0
    self.P.N = x & 0x80
    return x & 0xFF

def algorithmROR(self, x):
    carry = self.P.C
    self.P.C = x & 0x01
    x = carry << 7 | x >> 1
    self.P.Z = (x & 0XFF) == 0
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
