inline primitive dispatch generated code
lowcodeUnaryInlinePrimitive4: prim
	<option: #LowcodeVM>	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[180]	-> [ ^ self lowcodePrimitiveSignExtend32From16 ].
			[181]	-> [ ^ self lowcodePrimitiveSignExtend32From8 ].
			[182]	-> [ ^ self lowcodePrimitiveSignExtend64From16 ].
			[183]	-> [ ^ self lowcodePrimitiveSignExtend64From32 ].
			[184]	-> [ ^ self lowcodePrimitiveSignExtend64From8 ].
			[185]	-> [ ^ self lowcodePrimitiveStoreFloat32ToMemory ].
			[186]	-> [ ^ self lowcodePrimitiveStoreFloat64ToMemory ].
			[187]	-> [ ^ self lowcodePrimitiveStoreInt16ToMemory ].
			[188]	-> [ ^ self lowcodePrimitiveStoreInt32ToMemory ].
			[189]	-> [ ^ self lowcodePrimitiveStoreInt64ToMemory ].
			[190]	-> [ ^ self lowcodePrimitiveStoreInt8ToMemory ].
			[191]	-> [ ^ self lowcodePrimitiveStoreLocalFloat32 ].
			[192]	-> [ ^ self lowcodePrimitiveStoreLocalFloat64 ].
			[193]	-> [ ^ self lowcodePrimitiveStoreLocalInt16 ].
			[194]	-> [ ^ self lowcodePrimitiveStoreLocalInt32 ].
			[195]	-> [ ^ self lowcodePrimitiveStoreLocalInt64 ].
			[196]	-> [ ^ self lowcodePrimitiveStoreLocalInt8 ].
			[197]	-> [ ^ self lowcodePrimitiveStoreLocalPointer ].
			[198]	-> [ ^ self lowcodePrimitiveStorePointerToMemory ].
			[199]	-> [ ^ self lowcodePrimitiveSub32 ].
			[200]	-> [ ^ self lowcodePrimitiveSub64 ].
			[201]	-> [ ^ self lowcodePrimitiveTruncate32To16 ].
			[202]	-> [ ^ self lowcodePrimitiveTruncate32To8 ].
			[203]	-> [ ^ self lowcodePrimitiveTruncate64To16 ].
			[204]	-> [ ^ self lowcodePrimitiveTruncate64To32 ].
			[205]	-> [ ^ self lowcodePrimitiveTruncate64To8 ].
			[206]	-> [ ^ self lowcodePrimitiveUdiv32 ].
			[207]	-> [ ^ self lowcodePrimitiveUdiv64 ].
			[208]	-> [ ^ self lowcodePrimitiveUint32Great ].
			[209]	-> [ ^ self lowcodePrimitiveUint32GreatEqual ].
			[210]	-> [ ^ self lowcodePrimitiveUint32Less ].
			[211]	-> [ ^ self lowcodePrimitiveUint32LessEqual ].
			[212]	-> [ ^ self lowcodePrimitiveUint32ToFloat32 ].
			[213]	-> [ ^ self lowcodePrimitiveUint32ToFloat64 ].
			[214]	-> [ ^ self lowcodePrimitiveUint64Great ].
			[215]	-> [ ^ self lowcodePrimitiveUint64GreatEqual ].
			[216]	-> [ ^ self lowcodePrimitiveUint64Less ].
			[217]	-> [ ^ self lowcodePrimitiveUint64LessEqual ].
			[218]	-> [ ^ self lowcodePrimitiveUint64ToFloat32 ].
			[219]	-> [ ^ self lowcodePrimitiveUint64ToFloat64 ].
			[220]	-> [ ^ self lowcodePrimitiveUmul32 ].
			[221]	-> [ ^ self lowcodePrimitiveUmul64 ].
			[222]	-> [ ^ self lowcodePrimitiveUnlockRegisters ].
			[223]	-> [ ^ self lowcodePrimitiveUnlockVM ].
			[224]	-> [ ^ self lowcodePrimitiveUrem32 ].
			[225]	-> [ ^ self lowcodePrimitiveUrem64 ].
			[226]	-> [ ^ self lowcodePrimitiveXor32 ].
			[227]	-> [ ^ self lowcodePrimitiveXor64 ].
			[228]	-> [ ^ self lowcodePrimitiveZeroExtend32From16 ].
			[229]	-> [ ^ self lowcodePrimitiveZeroExtend32From8 ].
			[230]	-> [ ^ self lowcodePrimitiveZeroExtend64From16 ].
			[231]	-> [ ^ self lowcodePrimitiveZeroExtend64From32 ].
			[232]	-> [ ^ self lowcodePrimitiveZeroExtend64From8 ].
		}
		otherwise: [
			localIP := localIP - 3.
			^self respondToUnknownBytecode
		].
	

