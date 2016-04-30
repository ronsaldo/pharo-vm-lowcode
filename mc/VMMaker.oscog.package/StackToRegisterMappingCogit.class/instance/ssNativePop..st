simulation stack
ssNativePop: n
	self assert: (simNativeStackPtr - n >= -1).
	simNativeStackPtr := simNativeStackPtr - n.
	simNativeStackPtr >= 0 ifTrue: [
		simNativeStackSize := self ssNativeTop offset
	] ifFalse: [
		simNativeStackSize := 0.
	]