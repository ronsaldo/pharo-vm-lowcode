inline primitive generators generated code
genLowcodeStoreInt16ToMemory
	"Lowcode instruction generator"
	| pointer value |

	(value := backEnd availableRegisterOrNoneFor: self liveRegisters) = NoReg ifTrue:
		[self ssAllocateRequiredReg:
			(value := optStatus isReceiverResultRegLive
				ifTrue: [Arg0Reg]
				ifFalse: [ReceiverResultReg])].

	(pointer := backEnd availableRegisterOrNoneFor: (self liveRegisters bitOr: (self registerMaskFor: value))) = NoReg ifTrue:
		[self ssAllocateRequiredReg: (pointer := Arg1Reg)].
	(value = ReceiverResultReg or: [pointer = ReceiverResultReg]) ifTrue:
		[ optStatus isReceiverResultRegLive: false ].
	self ssNativeTop nativePopToReg: value.
	self ssNativePop: 1.
	self ssNativeTop nativePopToReg: pointer.
	self ssNativePop: 1.

	self MoveR: value R: TempReg.
	self MoveR: TempReg M16: 0 r: pointer.

	^ 0

