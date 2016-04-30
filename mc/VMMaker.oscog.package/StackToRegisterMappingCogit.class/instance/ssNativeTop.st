simulation stack
ssNativeTop
	<returnTypeC: #'CogSimStackNativeEntry *'>
	self assert: simNativeStackPtr >= 0.
	^self simNativeStackAt: simNativeStackPtr