inline primitive support
genLcStore: value object: object field: fieldIndex
	self genGetRawSlotSizeOfNonImm: object into: TempReg.
	cogit AddCq: 1 R: TempReg.
	cogit LogicalShiftRightCq: 5 R: TempReg.
	cogit AddCq: 8 + (BytesPerOop*fieldIndex) R: TempReg.
	cogit AddR: TempReg R: object.
	cogit MoveR: value Mw: 0 r: object.