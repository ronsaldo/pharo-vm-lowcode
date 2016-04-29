inline primitive ffi abi
lowcodeCalloutFloat64Result: functionPointer
	<var: #functionPointer type: #'char*' >
	self externalizeIPandSP.
   self lowcodeCalloutState: lowcodeCalloutState callFunction: functionPointer.
   self internalizeIPandSP.
	^ self lowcodeCalloutStateFetchResultFloat64: lowcodeCalloutState