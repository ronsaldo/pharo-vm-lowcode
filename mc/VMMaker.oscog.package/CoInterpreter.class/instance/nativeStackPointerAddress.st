trampoline support
nativeStackPointerAddress
	<api>
	<returnTypeC: #usqInt>
	^self cCode: [(self addressOf: nativeStackPointer) asUnsignedInteger]
		inSmalltalk: [cogit simulatedReadWriteVariableAddress: #nativeStackPointer in: self]