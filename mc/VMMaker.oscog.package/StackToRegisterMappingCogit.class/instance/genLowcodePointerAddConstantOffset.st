inline primitive generators generated code
genLowcodePointerAddConstantOffset
	<option: #LowcodeVM>	"Lowcode instruction generator"
	| base offset |
	offset := extA.

	(base := backEnd availableRegisterOrNoneFor: self liveRegisters) = NoReg ifTrue:
		[self ssAllocateRequiredReg:
			(base := optStatus isReceiverResultRegLive
				ifTrue: [Arg0Reg]
				ifFalse: [ReceiverResultReg])].
	base = ReceiverResultReg ifTrue:
		[ optStatus isReceiverResultRegLive: false ].
	self ssNativeTop nativePopToReg: base.
	self ssNativePop: 1.

	self AddCq: offset R: base.
	self ssPushNativeRegister: base.

	extA := 0.
	^ 0

