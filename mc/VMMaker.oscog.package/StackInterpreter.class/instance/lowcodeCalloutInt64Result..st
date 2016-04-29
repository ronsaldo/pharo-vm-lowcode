inline primitive ffi abi
lowcodeCalloutInt64Result: functionPointer
	<var: #functionPointer type: #'char*' >
	self externalizeIPandSP.
   self lowcodeCalloutState: lowcodeCalloutState callFunction: functionPointer.
   self internalizeIPandSP.
	^ self lowcodeCalloutStateFetchResultInt64: lowcodeCalloutState