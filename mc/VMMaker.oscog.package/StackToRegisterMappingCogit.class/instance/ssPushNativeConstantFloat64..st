simulation stack
ssPushNativeConstantFloat64: aFloat64
	self ssNativePush: 1.
	simNativeSpillBase > simNativeStackPtr ifTrue:
		[simNativeSpillBase := simNativeStackPtr max: 0].
	simNativeStackSize := simNativeStackSize + 8.
	self ssNativeTop
		type: SSConstantFloat32;
		spilled: false;
		offset: simNativeStackSize;
		constantFloat32: aFloat64;
		bcptr: bytecodePC.
	^0