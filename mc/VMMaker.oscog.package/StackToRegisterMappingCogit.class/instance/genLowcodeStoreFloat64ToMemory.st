inline primitive generators generated code
genLowcodeStoreFloat64ToMemory
	"Lowcode instruction generator"
	| doubleValue pointer |

	(doubleValue := backEnd availableFloatRegisterOrNoneFor: self liveFloatRegisters) = NoReg ifTrue:
		[self ssAllocateRequiredFloatReg: (doubleValue := DPFPReg0)].

	(pointer := backEnd availableRegisterOrNoneFor: self liveRegisters) = NoReg ifTrue:
		[self ssAllocateRequiredReg:
			(pointer := optStatus isReceiverResultRegLive
				ifTrue: [Arg0Reg]
				ifFalse: [ReceiverResultReg])].
	pointer = ReceiverResultReg ifTrue:
		[ optStatus isReceiverResultRegLive: false ].
	self ssNativeTop nativePopToReg: doubleValue.
	self ssNativePop: 1.
	self ssNativeTop nativePopToReg: pointer.
	self ssNativePop: 1.

	self MoveRd: doubleValue M64: 0 r: pointer.

	^ 0

