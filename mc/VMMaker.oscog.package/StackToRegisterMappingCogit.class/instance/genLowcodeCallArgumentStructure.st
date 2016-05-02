inline primitive generators generated code
genLowcodeCallArgumentStructure
	"Lowcode instruction generator"

	"Fetch the pointer"
	self ssNativeTop nativeStackPopToReg: TempReg.
	self ssNativePop: 1.
	"Allocate space"
	self SubCq: currentCallCleanUpSize R: SPReg .
	"Copy the structure"
	backEnd genMemCopy: TempReg to: SPReg constantSize: extA.
	extA := 0.

	^ 0

