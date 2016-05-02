inline primitive support
genLcFirstFieldPointer: objectReg
	cogit AddCq: 4 R: objectReg.
	cogit ssPushNativeRegister: objectReg.