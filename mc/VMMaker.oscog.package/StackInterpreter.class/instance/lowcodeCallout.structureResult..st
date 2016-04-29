inline primitive ffi abi
lowcodeCallout: functionPointer structureResult: resultPointer
	<var: #functionPointer type: #'char*' >
	<var: #resultPointer type: #'char*' >
	self internalPushShadowCallStackPointer: resultPointer.
	self externalizeIPandSP.
   self lowcodeCalloutState: lowcodeCalloutState callFunction: functionPointer.
   self internalizeIPandSP.
	^ self lowcodeCalloutStateFetchResultStructure: lowcodeCalloutState