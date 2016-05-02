inline primitive support
genLcLoadObject: object field: fieldIndex
	self genGetRawSlotSizeOfNonImm: object into: TempReg.
	cogit AddCq: 1 R: TempReg.
	cogit LogicalShiftRightCq: 5 R: TempReg.
	cogit AddCq: 8 + (BytesPerOop*fieldIndex) R: TempReg.
	cogit AddR: TempReg R: object.
	cogit MoveMw: 0 r: object R: object.
	cogit ssPushRegister: object