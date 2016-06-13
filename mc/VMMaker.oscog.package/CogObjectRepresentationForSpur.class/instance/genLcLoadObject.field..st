inline primitive support
genLcLoadObject: object field: fieldIndex
	cogit MoveMw: 8 + (BytesPerOop*fieldIndex) r: object R: object.
	cogit ssPushRegister: object