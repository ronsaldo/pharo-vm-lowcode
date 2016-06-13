inline primitive support
genLcFirstIndexableFieldPointer: objectReg
	"TODO: Retrieve the number of fixed fields."
	cogit AddCq: 8 R: objectReg.
	cogit ssPushNativeRegister: objectReg.