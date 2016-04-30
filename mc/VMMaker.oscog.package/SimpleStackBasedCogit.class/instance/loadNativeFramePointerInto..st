bytecode generator support
loadNativeFramePointerInto: reg
	self MoveMw: self frameOffsetOfNativeFramePointer r: FPReg R: reg