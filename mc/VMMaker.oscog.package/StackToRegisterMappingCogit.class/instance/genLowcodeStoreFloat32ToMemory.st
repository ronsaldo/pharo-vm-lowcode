inline primitive generators generated code
genLowcodeStoreFloat32ToMemory
	"Lowcode instruction generator"
	| floatValue pointer |

	(floatValue := backEnd availableFloatRegisterOrNoneFor: self liveFloatRegisters) = NoReg ifTrue:
		[self ssAllocateRequiredFloatReg: (floatValue := DPFPReg0)].

	(pointer := backEnd availableRegisterOrNoneFor: self liveRegisters) = NoReg ifTrue:
		[self ssAllocateRequiredReg:
			(pointer := optStatus isReceiverResultRegLive
				ifTrue: [Arg0Reg]
				ifFalse: [ReceiverResultReg])].
	pointer = ReceiverResultReg ifTrue:
		[ optStatus isReceiverResultRegLive: false ].
	self ssNativeTop nativePopToReg: floatValue.
	self ssNativePop: 1.
	self ssNativeTop nativePopToReg: pointer.
	self ssNativePop: 1.

	self MoveRs: floatValue M32: 0 r: pointer.

	^ 0

