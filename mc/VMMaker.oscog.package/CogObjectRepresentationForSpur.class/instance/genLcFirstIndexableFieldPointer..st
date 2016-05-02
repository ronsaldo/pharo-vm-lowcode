inline primitive support
genLcFirstIndexableFieldPointer: objectReg
	"TODO: increase the pointer by the fixed slot count."
	self genGetRawSlotSizeOfNonImm: objectReg into: TempReg.
	cogit AddCq: 1 R: TempReg.
	cogit LogicalShiftRightCq: 5 R: TempReg.
	cogit AddCq: 8 R: TempReg.
	cogit AddR: TempReg R: objectReg.
	cogit ssPushNativeRegister: objectReg.