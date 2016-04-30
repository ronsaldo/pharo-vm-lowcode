simulation stack
leaveNativeFrame
	self assert: needsFrame.
	self MoveMw: self frameOffsetOfPreviousNativeStackPointer r: FPReg R: TempReg.
	self SubCq: 1 R: TempReg.
	self MoveR: TempReg Aw: coInterpreter nativeStackPointerAddress