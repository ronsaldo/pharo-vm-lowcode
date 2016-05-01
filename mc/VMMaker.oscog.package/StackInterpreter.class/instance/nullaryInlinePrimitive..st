inline primitive dispatch generated code
nullaryInlinePrimitive: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[0]	-> [ ^ self lowcodePrimitiveUint64ToOop ].
			[1]	-> [ ^ self lowcodePrimitiveUint32ToOop ].
			[2]	-> [ ^ self lowcodePrimitiveSmallInt32ToOop ].
			[3]	-> [ ^ self lowcodePrimitivePointerToOopReinterprer ].
			[4]	-> [ ^ self lowcodePrimitivePointerToOop ].
			[5]	-> [ ^ self lowcodePrimitiveInt64ToOop ].
			[6]	-> [ ^ self lowcodePrimitiveInt32ToOop ].
			[7]	-> [ ^ self lowcodePrimitiveFloat64ToOop ].
			[8]	-> [ ^ self lowcodePrimitiveFloat32ToOop ].
			[9]	-> [ ^ self lowcodePrimitiveBoolean64ToOop ].
			[10]	-> [ ^ self lowcodePrimitiveBoolean32ToOop ].
		}
		otherwise: [ ^ self optimizedNullaryInlinePrimitive: prim ].
	

