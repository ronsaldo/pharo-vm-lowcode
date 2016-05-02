inline primitive support
genLcOopToPointer: object
	"Assume this is always correct"
	cogit MoveMw: BaseHeaderSize r: object R: object.
	cogit ssPushNativeRegister: object.