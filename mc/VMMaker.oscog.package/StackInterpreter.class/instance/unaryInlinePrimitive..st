inline primitive dispatch generated code
unaryInlinePrimitive: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[7]	-> [ ^ self lowcodePrimitiveLoadObjectField ].
			[8]	-> [ ^ self lowcodePrimitiveLoadObjectAt ].
			[9]	-> [ ^ self lowcodePrimitiveInstantiateOop ].
			[10]	-> [ ^ self lowcodePrimitiveInstantiateIndexableOop ].
			[11]	-> [ ^ self lowcodePrimitiveInstantiateIndexable32Oop ].
			[12]	-> [ ^ self lowcodePrimitiveZeroExtend64From8 ].
			[13]	-> [ ^ self lowcodePrimitiveZeroExtend64From32 ].
			[14]	-> [ ^ self lowcodePrimitiveZeroExtend64From16 ].
			[15]	-> [ ^ self lowcodePrimitiveZeroExtend32From8 ].
			[16]	-> [ ^ self lowcodePrimitiveZeroExtend32From16 ].
			[17]	-> [ ^ self lowcodePrimitiveXor64 ].
			[18]	-> [ ^ self lowcodePrimitiveXor32 ].
			[19]	-> [ ^ self lowcodePrimitiveUrem64 ].
			[20]	-> [ ^ self lowcodePrimitiveUrem32 ].
			[21]	-> [ ^ self lowcodePrimitiveUnlockVM ].
			[22]	-> [ ^ self lowcodePrimitiveUnlockRegisters ].
			[23]	-> [ ^ self lowcodePrimitiveUmul64 ].
			[24]	-> [ ^ self lowcodePrimitiveUmul32 ].
			[25]	-> [ ^ self lowcodePrimitiveUint64ToFloat64 ].
			[26]	-> [ ^ self lowcodePrimitiveUint64ToFloat32 ].
			[27]	-> [ ^ self lowcodePrimitiveUint64LessEqual ].
			[28]	-> [ ^ self lowcodePrimitiveUint64Less ].
			[29]	-> [ ^ self lowcodePrimitiveUint64GreatEqual ].
			[30]	-> [ ^ self lowcodePrimitiveUint64Great ].
			[31]	-> [ ^ self lowcodePrimitiveUint32ToFloat64 ].
			[32]	-> [ ^ self lowcodePrimitiveUint32ToFloat32 ].
			[33]	-> [ ^ self lowcodePrimitiveUint32LessEqual ].
			[34]	-> [ ^ self lowcodePrimitiveUint32Less ].
			[35]	-> [ ^ self lowcodePrimitiveUint32GreatEqual ].
			[36]	-> [ ^ self lowcodePrimitiveUint32Great ].
			[37]	-> [ ^ self lowcodePrimitiveUdiv64 ].
			[38]	-> [ ^ self lowcodePrimitiveUdiv32 ].
			[39]	-> [ ^ self lowcodePrimitiveTruncate64To8 ].
			[40]	-> [ ^ self lowcodePrimitiveTruncate64To32 ].
			[41]	-> [ ^ self lowcodePrimitiveTruncate64To16 ].
			[42]	-> [ ^ self lowcodePrimitiveTruncate32To8 ].
			[43]	-> [ ^ self lowcodePrimitiveTruncate32To16 ].
			[44]	-> [ ^ self lowcodePrimitiveSub64 ].
			[45]	-> [ ^ self lowcodePrimitiveSub32 ].
			[46]	-> [ ^ self lowcodePrimitiveStorePointerToMemory ].
			[47]	-> [ ^ self lowcodePrimitiveStoreLocalPointer ].
			[48]	-> [ ^ self lowcodePrimitiveStoreLocalInt8 ].
			[49]	-> [ ^ self lowcodePrimitiveStoreLocalInt64 ].
			[50]	-> [ ^ self lowcodePrimitiveStoreLocalInt32 ].
			[51]	-> [ ^ self lowcodePrimitiveStoreLocalInt16 ].
			[52]	-> [ ^ self lowcodePrimitiveStoreLocalFloat64 ].
			[53]	-> [ ^ self lowcodePrimitiveStoreLocalFloat32 ].
			[54]	-> [ ^ self lowcodePrimitiveStoreInt8ToMemory ].
			[55]	-> [ ^ self lowcodePrimitiveStoreInt64ToMemory ].
			[56]	-> [ ^ self lowcodePrimitiveStoreInt32ToMemory ].
			[57]	-> [ ^ self lowcodePrimitiveStoreInt16ToMemory ].
			[58]	-> [ ^ self lowcodePrimitiveStoreFloat64ToMemory ].
			[59]	-> [ ^ self lowcodePrimitiveStoreFloat32ToMemory ].
			[60]	-> [ ^ self lowcodePrimitiveSignExtend64From8 ].
			[61]	-> [ ^ self lowcodePrimitiveSignExtend64From32 ].
			[62]	-> [ ^ self lowcodePrimitiveSignExtend64From16 ].
			[63]	-> [ ^ self lowcodePrimitiveSignExtend32From8 ].
			[64]	-> [ ^ self lowcodePrimitiveSignExtend32From16 ].
			[65]	-> [ ^ self lowcodePrimitiveRightShift64 ].
			[66]	-> [ ^ self lowcodePrimitiveRightShift32 ].
		}
		otherwise: [ ^ self unaryInlinePrimitive2: prim ].
	

