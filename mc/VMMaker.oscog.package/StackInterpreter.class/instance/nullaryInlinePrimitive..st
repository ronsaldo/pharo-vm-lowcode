inline primitive dispatch generated code
nullaryInlinePrimitive: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[1]	-> [ ^ self lowcodePrimitiveBoolean32ToOop ].
			[2]	-> [ ^ self lowcodePrimitiveBoolean64ToOop ].
			[3]	-> [ ^ self lowcodePrimitiveFloat32ToOop ].
			[4]	-> [ ^ self lowcodePrimitiveFloat64ToOop ].
			[5]	-> [ ^ self lowcodePrimitiveInt32ToOop ].
			[6]	-> [ ^ self lowcodePrimitiveInt64ToOop ].
			[7]	-> [ ^ self lowcodePrimitivePointerToOop ].
			[8]	-> [ ^ self lowcodePrimitivePointerToOopReinterprer ].
			[9]	-> [ ^ self lowcodePrimitiveSmallInt32ToOop ].
			[10]	-> [ ^ self lowcodePrimitiveUint32ToOop ].
			[11]	-> [ ^ self lowcodePrimitiveUint64ToOop ].
		}
		otherwise: [ ^ self optimizedNullaryInlinePrimitive: prim ].
	

