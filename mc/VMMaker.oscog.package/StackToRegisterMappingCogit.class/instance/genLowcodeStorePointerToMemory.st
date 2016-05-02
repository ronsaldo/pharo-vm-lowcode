inline primitive generators generated code
genLowcodeStorePointerToMemory
	"Lowcode instruction generator"
	| memoryPointer pointerValue |

	(pointerValue := backEnd availableRegisterOrNoneFor: self liveRegisters) = NoReg ifTrue:
		[self ssAllocateRequiredReg:
			(pointerValue := optStatus isReceiverResultRegLive
				ifTrue: [Arg0Reg]
				ifFalse: [ReceiverResultReg])].

	(memoryPointer := backEnd availableRegisterOrNoneFor: (self liveRegisters bitOr: (self registerMaskFor: pointerValue))) = NoReg ifTrue:
		[self ssAllocateRequiredReg: (memoryPointer := Arg1Reg)].
	(pointerValue = ReceiverResultReg or: [memoryPointer = ReceiverResultReg]) ifTrue:
		[ optStatus isReceiverResultRegLive: false ].
	self ssNativeTop nativePopToReg: pointerValue.
	self ssNativePop: 1.
	self ssNativeTop nativePopToReg: memoryPointer.
	self ssNativePop: 1.

	self MoveR: pointerValue Mw: 0 r: memoryPointer.

	^ 0

