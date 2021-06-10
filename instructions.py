from struct import unpack

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

def instructionAbsoluteBitModify(mode):
	return
def instructionAbsoluteBitModify(mode):
	return
def instructionAbsoluteBitSet(bit,value):
	return
def instructionAbsoluteRead(op,target):
	return
def instructionAbsoluteModify(op):
	return
def instructionAbsoluteWrite(data):
	return
def instructionAbsoluteIndexedRead(op,index):
	return
def instructionAbsoluteIndexedWrite(index):
	return
def instructionBranch(take):
	return
def instructionBranchBit(bit,match):
	return
def instructionBranchNotDirect():
	return
def instructionBranchNotDirectDecrement():
	return
def instructionBranchNotDirectIndexed(index):
	return
def instructionBranchNotYDecrement():
	return
def instructionBreak():
	return
def instructionCallAbsolute():
	return
def instructionCallPage():
	return
def instructionCallTable(vector):
	return
def instructionComplementCarry():
	return
def instructionDecimalAdjustAdd():
	return
def instructionDecimalAdjustSub():
	return
def instructionDirectRead(op,target):
	return
def instructionDirectModify(op):
	return
def instructionDirectWrite(data):
	return
def instructionDirectDirectCompare(op):
	return
def instructionDirectDirectModify(op):
	return
def instructionDirectDirectWrite():
	return
def instructionDirectImmediateCompare(op):
	return
def instructionDirectImmediateModify(op):
	return
def instructionDirectImmediateWrite():
	return
def instructionDirectCompareWord(op):
	return
def instructionDirectReadWord(op):
	return
def instructionDirectModifyWord(adjust):
	return
def instructionDirectWriteWord():
	return
def instructionDirectIndexedRead(op,target,index):
	return
def instructionDirectIndexedModify(op,index):
	return
def instructionDirectIndexedWrite(data,index):
	return
def instructionDivide():
	return
def instructionExchangeNibble():
	return
def instructionFlagSet(flag,value):
	return
def instructionImmediateRead(op,target):
	return
def instructionImpliedModify(op,target):
	return
def instructionIndexedIndirectRead(op,index):
	return
def instructionIndexedIndirectWrite(data,index):
	return
def instructionIndirectIndexedRead(op,index):
	return
def instructionIndirectIndexedWrite(data,index):
	return
def instructionIndirectXRead(op):
	return
def instructionIndirectXWrite(data):
	return
def instructionIndirectXIncrementRead(data):
	return
def instructionIndirectXIncrementWrite(data):
	return
def instructionIndirectXCompareIndirectY(op):
	return
def instructionIndirectXWriteIndirectY(op):
	return
def instructionJumpAbsolute():
	return
def instructionJumpIndirectX():
	return
def instructionMultiply():
	return
def instructionNoOperation():
	return
def instructionOverflowClear():
	return
def instructionPull(data):
	return
def instructionPullP():
	return
def instructionPush(data):
	return
def instructionReturnInterrupt():
	return
def instructionReturnSubroutine():
	return
def instructionStop():
	return
def instructionTestSetBitsAbsolute(set):
	return
def instructionTransfer(src,target):
	return
def instructionWait():
	return