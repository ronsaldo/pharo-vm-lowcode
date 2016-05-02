inline primitive support
genLcLoadObject: object at: fieldIndex
	self genGetRawSlotSizeOfNonImm: object into: TempReg.
	cogit AddCq: 1 R: TempReg.
	cogit LogicalShiftRightCq: 5 R: TempReg.
	cogit AddCq: 8 R: TempReg.
	cogit AddR: TempReg R: object.
	cogit MoveXwr: fieldIndex R: object R: object.
	cogit ssPushRegister: object