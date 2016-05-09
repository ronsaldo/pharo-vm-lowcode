inline primitive generators dispatch generated code
genTrinaryInlinePrimitive: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[5]	-> [ ^ self genLowcodeOopEqual ].
			[6]	-> [ ^ self genLowcodeOopNotEqual ].
			[7]	-> [ ^ self genLowcodeStoreObjectField ].
			[8]	-> [ ^ self genLowcodeStoreObjectFieldAt ].
		}
		otherwise: [ ^ self genOptimizedTrinaryInlinePrimitive: prim ].
	^ 0

