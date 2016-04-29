inline primitive dispatch generated code
negativeTrinaryInlinePrimitive: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[0]	-> [ ^ self lowcodePrimitiveOopEqual ].
			[1]	-> [ ^ self lowcodePrimitiveOopNotEqual ].
			[2]	-> [ ^ self lowcodePrimitiveStoreObjectField ].
			[3]	-> [ ^ self lowcodePrimitiveStoreObjectFieldAt ].
		}
		otherwise: [ ^ self optimizedNegativeTrinaryInlinePrimitive: prim ].
	

