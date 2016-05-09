inline primitive dispatch generated code
trinaryInlinePrimitive: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[5]	-> [ ^ self lowcodePrimitiveOopEqual ].
			[6]	-> [ ^ self lowcodePrimitiveOopNotEqual ].
			[7]	-> [ ^ self lowcodePrimitiveStoreObjectField ].
			[8]	-> [ ^ self lowcodePrimitiveStoreObjectFieldAt ].
		}
		otherwise: [ ^ self optimizedTrinaryInlinePrimitive: prim ].
	

