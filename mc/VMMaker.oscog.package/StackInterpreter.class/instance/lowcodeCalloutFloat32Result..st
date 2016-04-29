inline primitive ffi abi
lowcodeCalloutFloat32Result: functionPointer
	<var: #functionPointer type: #'char*' >
	self externalizeIPandSP.
   self lowcodeCalloutState: lowcodeCalloutState callFunction: functionPointer.
   self internalizeIPandSP.
	^ self lowcodeCalloutStateFetchResultFloat32: lowcodeCalloutState