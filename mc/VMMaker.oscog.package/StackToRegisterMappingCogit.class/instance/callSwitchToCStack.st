inline ffi
callSwitchToCStack
	self MoveAw: self cFramePointerAddress R: FPReg.
	^0