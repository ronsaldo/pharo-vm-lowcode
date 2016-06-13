inline primitive support
genLcFirstFieldPointer: objectReg
	cogit AddCq: 8 R: objectReg.
	cogit ssPushNativeRegister: objectReg.