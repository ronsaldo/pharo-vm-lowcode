inline primitive support
genLcFirstFieldPointer: objectReg
	self genGetRawSlotSizeOfNonImm: objectReg into: TempReg.
	cogit AddCq: 1 R: TempReg.
	cogit LogicalShiftRightCq: 5 R: TempReg.
	cogit AddCq: 8 R: TempReg.
	cogit AddR: TempReg R: objectReg.
	cogit ssPushNativeRegister: objectReg.