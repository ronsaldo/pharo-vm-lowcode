inline primitive dispatch generated code
trinaryInlinePrimitive: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[5]	-> [ ^ self lowcodePrimitiveStoreObjectFieldAt ].
			[6]	-> [ ^ self lowcodePrimitiveStoreObjectField ].
			[7]	-> [ ^ self lowcodePrimitiveOopNotEqual ].
			[8]	-> [ ^ self lowcodePrimitiveOopEqual ].
		}
		otherwise: [ ^ self optimizedTrinaryInlinePrimitive: prim ].
	

