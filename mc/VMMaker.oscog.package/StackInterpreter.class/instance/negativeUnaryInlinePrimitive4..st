inline primitive dispatch generated code
negativeUnaryInlinePrimitive4: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[180]	-> [ ^ self lowcodePrimitiveStoreInt8ToMemory ].
			[181]	-> [ ^ self lowcodePrimitiveStoreLocalFloat32 ].
			[182]	-> [ ^ self lowcodePrimitiveStoreLocalFloat64 ].
			[183]	-> [ ^ self lowcodePrimitiveStoreLocalInt16 ].
			[184]	-> [ ^ self lowcodePrimitiveStoreLocalInt32 ].
			[185]	-> [ ^ self lowcodePrimitiveStoreLocalInt64 ].
			[186]	-> [ ^ self lowcodePrimitiveStoreLocalInt8 ].
			[187]	-> [ ^ self lowcodePrimitiveStoreLocalPointer ].
			[188]	-> [ ^ self lowcodePrimitiveStorePointerToMemory ].
			[189]	-> [ ^ self lowcodePrimitiveSub32 ].
			[190]	-> [ ^ self lowcodePrimitiveSub64 ].
			[191]	-> [ ^ self lowcodePrimitiveTruncate32To16 ].
			[192]	-> [ ^ self lowcodePrimitiveTruncate32To8 ].
			[193]	-> [ ^ self lowcodePrimitiveTruncate64To16 ].
			[194]	-> [ ^ self lowcodePrimitiveTruncate64To32 ].
			[195]	-> [ ^ self lowcodePrimitiveTruncate64To8 ].
			[196]	-> [ ^ self lowcodePrimitiveUdiv32 ].
			[197]	-> [ ^ self lowcodePrimitiveUdiv64 ].
			[198]	-> [ ^ self lowcodePrimitiveUint32Great ].
			[199]	-> [ ^ self lowcodePrimitiveUint32GreatEqual ].
			[200]	-> [ ^ self lowcodePrimitiveUint32Less ].
			[201]	-> [ ^ self lowcodePrimitiveUint32LessEqual ].
			[202]	-> [ ^ self lowcodePrimitiveUint32ToFloat32 ].
			[203]	-> [ ^ self lowcodePrimitiveUint32ToFloat64 ].
			[204]	-> [ ^ self lowcodePrimitiveUint64Great ].
			[205]	-> [ ^ self lowcodePrimitiveUint64GreatEqual ].
			[206]	-> [ ^ self lowcodePrimitiveUint64Less ].
			[207]	-> [ ^ self lowcodePrimitiveUint64LessEqual ].
			[208]	-> [ ^ self lowcodePrimitiveUint64ToFloat32 ].
			[209]	-> [ ^ self lowcodePrimitiveUint64ToFloat64 ].
			[210]	-> [ ^ self lowcodePrimitiveUmul32 ].
			[211]	-> [ ^ self lowcodePrimitiveUmul64 ].
			[212]	-> [ ^ self lowcodePrimitiveUnlockRegisters ].
			[213]	-> [ ^ self lowcodePrimitiveUnlockVM ].
			[214]	-> [ ^ self lowcodePrimitiveUrem32 ].
			[215]	-> [ ^ self lowcodePrimitiveUrem64 ].
			[216]	-> [ ^ self lowcodePrimitiveXor32 ].
			[217]	-> [ ^ self lowcodePrimitiveXor64 ].
			[218]	-> [ ^ self lowcodePrimitiveZeroExtend32From16 ].
			[219]	-> [ ^ self lowcodePrimitiveZeroExtend32From8 ].
			[220]	-> [ ^ self lowcodePrimitiveZeroExtend64From16 ].
			[221]	-> [ ^ self lowcodePrimitiveZeroExtend64From32 ].
			[222]	-> [ ^ self lowcodePrimitiveZeroExtend64From8 ].
			[223]	-> [ ^ self lowcodePrimitiveInstantiateIndexable32Oop ].
			[224]	-> [ ^ self lowcodePrimitiveInstantiateIndexableOop ].
			[225]	-> [ ^ self lowcodePrimitiveInstantiateOop ].
			[226]	-> [ ^ self lowcodePrimitiveLoadObjectAt ].
			[227]	-> [ ^ self lowcodePrimitiveLoadObjectField ].
		}
		otherwise: [ ^ self optimizedNegativeUnaryInlinePrimitive: prim ].
	

