simulation stack
ssPushNativeRegister: reg
	self ssNativePush: 1.
	simNativeSpillBase > simNativeStackPtr ifTrue:
		[simNativeSpillBase := simNativeStackPtr max: 0].
	simNativeStackSize := simNativeStackSize + BytesPerWord.
	self ssNativeTop
		type: SSNativeRegister;
		spilled: false;
		offset: simNativeStackSize;
		register: reg;
		bcptr: bytecodePC.
	^0