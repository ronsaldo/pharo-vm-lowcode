inline primitive dispatch generated code
unaryInlinePrimitive4: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[187]	-> [ ^ self lowcodePrimitiveSignExtend32From16 ].
			[188]	-> [ ^ self lowcodePrimitiveSignExtend32From8 ].
			[189]	-> [ ^ self lowcodePrimitiveSignExtend64From16 ].
			[190]	-> [ ^ self lowcodePrimitiveSignExtend64From32 ].
			[191]	-> [ ^ self lowcodePrimitiveSignExtend64From8 ].
			[192]	-> [ ^ self lowcodePrimitiveStoreFloat32ToMemory ].
			[193]	-> [ ^ self lowcodePrimitiveStoreFloat64ToMemory ].
			[194]	-> [ ^ self lowcodePrimitiveStoreInt16ToMemory ].
			[195]	-> [ ^ self lowcodePrimitiveStoreInt32ToMemory ].
			[196]	-> [ ^ self lowcodePrimitiveStoreInt64ToMemory ].
			[197]	-> [ ^ self lowcodePrimitiveStoreInt8ToMemory ].
			[198]	-> [ ^ self lowcodePrimitiveStoreLocalFloat32 ].
			[199]	-> [ ^ self lowcodePrimitiveStoreLocalFloat64 ].
			[200]	-> [ ^ self lowcodePrimitiveStoreLocalInt16 ].
			[201]	-> [ ^ self lowcodePrimitiveStoreLocalInt32 ].
			[202]	-> [ ^ self lowcodePrimitiveStoreLocalInt64 ].
			[203]	-> [ ^ self lowcodePrimitiveStoreLocalInt8 ].
			[204]	-> [ ^ self lowcodePrimitiveStoreLocalPointer ].
			[205]	-> [ ^ self lowcodePrimitiveStorePointerToMemory ].
			[206]	-> [ ^ self lowcodePrimitiveSub32 ].
			[207]	-> [ ^ self lowcodePrimitiveSub64 ].
			[208]	-> [ ^ self lowcodePrimitiveTruncate32To16 ].
			[209]	-> [ ^ self lowcodePrimitiveTruncate32To8 ].
			[210]	-> [ ^ self lowcodePrimitiveTruncate64To16 ].
			[211]	-> [ ^ self lowcodePrimitiveTruncate64To32 ].
			[212]	-> [ ^ self lowcodePrimitiveTruncate64To8 ].
			[213]	-> [ ^ self lowcodePrimitiveUdiv32 ].
			[214]	-> [ ^ self lowcodePrimitiveUdiv64 ].
			[215]	-> [ ^ self lowcodePrimitiveUint32Great ].
			[216]	-> [ ^ self lowcodePrimitiveUint32GreatEqual ].
			[217]	-> [ ^ self lowcodePrimitiveUint32Less ].
			[218]	-> [ ^ self lowcodePrimitiveUint32LessEqual ].
			[219]	-> [ ^ self lowcodePrimitiveUint32ToFloat32 ].
			[220]	-> [ ^ self lowcodePrimitiveUint32ToFloat64 ].
			[221]	-> [ ^ self lowcodePrimitiveUint64Great ].
			[222]	-> [ ^ self lowcodePrimitiveUint64GreatEqual ].
			[223]	-> [ ^ self lowcodePrimitiveUint64Less ].
			[224]	-> [ ^ self lowcodePrimitiveUint64LessEqual ].
			[225]	-> [ ^ self lowcodePrimitiveUint64ToFloat32 ].
			[226]	-> [ ^ self lowcodePrimitiveUint64ToFloat64 ].
			[227]	-> [ ^ self lowcodePrimitiveUmul32 ].
			[228]	-> [ ^ self lowcodePrimitiveUmul64 ].
			[229]	-> [ ^ self lowcodePrimitiveUnlockRegisters ].
			[230]	-> [ ^ self lowcodePrimitiveUnlockVM ].
			[231]	-> [ ^ self lowcodePrimitiveUrem32 ].
			[232]	-> [ ^ self lowcodePrimitiveUrem64 ].
			[233]	-> [ ^ self lowcodePrimitiveXor32 ].
			[234]	-> [ ^ self lowcodePrimitiveXor64 ].
			[235]	-> [ ^ self lowcodePrimitiveZeroExtend32From16 ].
			[236]	-> [ ^ self lowcodePrimitiveZeroExtend32From8 ].
			[237]	-> [ ^ self lowcodePrimitiveZeroExtend64From16 ].
			[238]	-> [ ^ self lowcodePrimitiveZeroExtend64From32 ].
			[239]	-> [ ^ self lowcodePrimitiveZeroExtend64From8 ].
		}
		otherwise: [ ^ self optimizedUnaryInlinePrimitive: prim ].
	

