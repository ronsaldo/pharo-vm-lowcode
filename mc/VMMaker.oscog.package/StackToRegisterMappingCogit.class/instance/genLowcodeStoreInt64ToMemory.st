inline primitive generators generated code
genLowcodeStoreInt64ToMemory
	"Lowcode instruction generator"
	| valueHigh pointer value valueLow |
	BytesPerWord = 4 ifTrue: [

		(valueLow := backEnd availableRegisterOrNoneFor: self liveRegisters) = NoReg ifTrue:
			[self ssAllocateRequiredReg:
				(valueLow := optStatus isReceiverResultRegLive
					ifTrue: [Arg0Reg]
					ifFalse: [ReceiverResultReg])].

		(valueHigh := backEnd availableRegisterOrNoneFor: (self liveRegisters bitOr: (self registerMaskFor: valueLow))) = NoReg ifTrue:
			[self ssAllocateRequiredReg: (valueHigh := Arg1Reg)].

		(pointer := backEnd availableRegisterOrNoneFor: ((self liveRegisters bitOr: (self registerMaskFor: valueLow)) bitOr: (self registerMaskFor: valueHigh))) = NoReg ifTrue:
			[self ssAllocateRequiredReg: (pointer := SendNumArgsReg)].
		((valueLow = ReceiverResultReg or: [valueHigh = ReceiverResultReg]) or: [pointer = ReceiverResultReg]) ifTrue:
			[ optStatus isReceiverResultRegLive: false ].
		self ssNativeTop nativePopToReg: valueLow secondReg: valueHigh.
		self ssNativePop: 1.
		self ssNativeTop nativePopToReg: pointer.
		self ssNativePop: 1.

		self MoveR: valueLow M32: 0 r: pointer.
		self MoveR: valueHigh M32: 4 r: pointer.

	] ifFalse: [

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

		self MoveR: value M64: 0 r: pointer.

	].
	^ 0

