inline primitive generators
genSistaBinaryInlinePrimitive: prim
	self ssTop type = SSConstant ifTrue:
		[^self genBinaryVarOpConstInlinePrimitive: prim - 2000].
	(self ssValue: 1) type = SSConstant ifTrue:
		[^self genBinaryConstOpVarInlinePrimitive: prim - 2000].
	^self genBinaryVarOpVarInlinePrimitive: prim - 2000