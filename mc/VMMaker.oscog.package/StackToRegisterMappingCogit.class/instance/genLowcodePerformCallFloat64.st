inline primitive generators generated code
genLowcodePerformCallFloat64
	"Lowcode instruction generator"

	self callSwitchToCStack.
	self MoveCw: extA R: TempReg.
	self CallRT: ceFFICalloutTrampoline.
	backEnd cFloatResultToRd: DPFPReg0.
	self ssPushNativeRegisterDoubleFloat: DPFPReg0.
	extA := 0.

	^ 0

