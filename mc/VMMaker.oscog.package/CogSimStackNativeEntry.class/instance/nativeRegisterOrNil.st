accessing
nativeRegisterOrNil
	^(((type = SSRegister
		or: [type = SSRegisterPair])
		or: [type = SSRegisterSingleFloat])
		or: [type = SSRegisterDoubleFloat])
		 ifTrue: [register]