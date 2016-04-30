trampoline support
shadowCallStackAddress
	<api>
	<returnTypeC: #usqInt>
	^self cCode: [(self addressOf: shadowCallStackPointer) asUnsignedInteger]
		inSmalltalk: [cogit simulatedReadWriteVariableAddress: #shadowCallStackPointer in: self]