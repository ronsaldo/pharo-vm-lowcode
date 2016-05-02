simulation stack
liveFloatRegisters
	| regsSet |
	(simSpillBase max: 0) to: simStackPtr do:
		[:i|
		regsSet := regsSet bitOr: (self simStackAt: i) floatRegisterMask].
	(simNativeSpillBase max: 0) to: simNativeStackPtr do:
		[:i|
		regsSet := regsSet bitOr: (self simNativeStackAt: i) nativeFloatRegisterMask].
	^regsSet