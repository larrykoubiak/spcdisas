from struct import unpack
import sys
import types
class SPC700Instruction:
    def __init__(self, offset, instruction, bytes):
        self.offset = offset
        self.instruction = instruction
        self.bytes = bytes
        self.label=""
        self.operands = None
        self.format = self.instruction["format"]
        self.formatargs = None
        self.unpackmap = {"b":"B","r":"b","w":"H","m":"H"}
        if self.instruction["bytes"] > 1:
            unpackstr = "<" + "".join([self.unpackmap[a] for a in self.instruction["args"]])
            self.operands = unpack(unpackstr,self.bytes[1:])

    def tostring(self, resolve_relative):
        result = ""
        if self.instruction["bytes"] == 1:
            result = self.format
        else:
            formatargs=[]
            argidx = 0
            for arg in self.instruction["args"]:
                if arg in ("b","w"):
                    formatargs.append(self.operands[argidx])
                elif arg=="r":
                    if resolve_relative:
                        formatargs.append(self.offset + self.operands[argidx] + self.instruction["bytes"])
                    else:
                        self.format = self.format.replace(":04x", ":02x")
                        formatargs.append(self.operands[argidx] & 0xff)
                elif arg=="m":
                    formatargs.append(self.operands[argidx] & 0x1FFF)
                    formatargs.append(self.operands[argidx] >> 13)
                argidx +=1
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
    return
def instructionAbsoluteBitSet(self, bit, value):
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

def algorithmADC(x, y):
	return
def algorithmAND(x, y):
	return
def algorithmASL(x):
	return
def algorithmCMP(x, y):
	return
def algorithmDEC(x):
	return
def algorithmEOR(x, y):
	return
def algorithmINC(x):
	return
def algorithmLD(x, y):
	return
def algorithmLSR(x):
	return
def algorithmOR(x, y):
	return
def algorithmROL(x):
	return
def algorithmROR(x):
	return
def algorithmSBC(x, y):
	return
def algorithmADW(x, y):
	return
def algorithmCPW(x, y):
	return
def algorithmLDW(x, y):
	return
def algorithmSBW(x, y):
	return