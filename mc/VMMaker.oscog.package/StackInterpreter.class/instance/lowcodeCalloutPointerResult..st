inline primitive ffi abi
lowcodeCalloutPointerResult: functionPointer
	<var: #functionPointer type: #'char*' >
	self externalizeIPandSP.
   self lowcodeCalloutState: lowcodeCalloutState callFunction: functionPointer.
   self internalizeIPandSP.
	^ self lowcodeCalloutStateFetchResultPointer: lowcodeCalloutState