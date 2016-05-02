inline primitive support
genLcIsBytes: objectReg to: valueReg
	"TODO: Implement this one"
	cogit MoveCq: 1 R: valueReg.
	cogit ssPushNativeRegister: valueReg.