inline primitive generators dispatch generated code
genTrinaryInlinePrimitive: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[5]	-> [ ^ self genLowcodeStoreObjectFieldAt ].
			[6]	-> [ ^ self genLowcodeStoreObjectField ].
			[7]	-> [ ^ self genLowcodeOopNotEqual ].
			[8]	-> [ ^ self genLowcodeOopEqual ].
		}
		otherwise: [ ^ self genOptimizedTrinaryInlinePrimitive: prim ].
	^ 0

