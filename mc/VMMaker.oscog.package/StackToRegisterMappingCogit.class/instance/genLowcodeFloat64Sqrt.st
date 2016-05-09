inline primitive generators generated code
genLowcodeFloat64Sqrt
	"Lowcode instruction generator"
	| value |

	(value := backEnd availableFloatRegisterOrNoneFor: self liveFloatRegisters) = NoReg ifTrue:
		[self ssAllocateRequiredFloatReg: (value := DPFPReg0)].
	self ssNativeTop nativePopToReg: value.
	self ssNativePop: 1.

	self SqrtRd: value.
	self ssPushNativeRegisterDoubleFloat: value.

	^ 0

