bytecode generator support
loadNativeLocalAddress: baseOffset to: reg
	self MoveMw: self frameOffsetOfNativeFramePointer r: FPReg R: reg.
	self AddCq: baseOffset - 1 R: reg.