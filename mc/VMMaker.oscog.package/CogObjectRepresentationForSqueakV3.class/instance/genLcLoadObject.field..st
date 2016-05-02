inline primitive support
genLcLoadObject: object field: fieldIndex
	cogit MoveMw: (fieldIndex+ 1) * BytesPerWord r: object R: object.
	cogit ssPushRegister: object