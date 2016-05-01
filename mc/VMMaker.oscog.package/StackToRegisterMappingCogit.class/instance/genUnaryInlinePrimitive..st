inline primitive generators dispatch generated code
genUnaryInlinePrimitive: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[7]	-> [ ^ self genLowcodeLoadObjectField ].
			[8]	-> [ ^ self genLowcodeLoadObjectAt ].
			[9]	-> [ ^ self genLowcodeInstantiateOop ].
			[10]	-> [ ^ self genLowcodeInstantiateIndexableOop ].
			[11]	-> [ ^ self genLowcodeInstantiateIndexable32Oop ].
			[12]	-> [ ^ self genLowcodeZeroExtend64From8 ].
			[13]	-> [ ^ self genLowcodeZeroExtend64From32 ].
			[14]	-> [ ^ self genLowcodeZeroExtend64From16 ].
			[15]	-> [ ^ self genLowcodeZeroExtend32From8 ].
			[16]	-> [ ^ self genLowcodeZeroExtend32From16 ].
			[17]	-> [ ^ self genLowcodeXor64 ].
			[18]	-> [ ^ self genLowcodeXor32 ].
			[19]	-> [ ^ self genLowcodeUrem64 ].
			[20]	-> [ ^ self genLowcodeUrem32 ].
			[21]	-> [ ^ self genLowcodeUnlockVM ].
			[22]	-> [ ^ self genLowcodeUnlockRegisters ].
			[23]	-> [ ^ self genLowcodeUmul64 ].
			[24]	-> [ ^ self genLowcodeUmul32 ].
			[25]	-> [ ^ self genLowcodeUint64ToFloat64 ].
			[26]	-> [ ^ self genLowcodeUint64ToFloat32 ].
			[27]	-> [ ^ self genLowcodeUint64LessEqual ].
			[28]	-> [ ^ self genLowcodeUint64Less ].
			[29]	-> [ ^ self genLowcodeUint64GreatEqual ].
			[30]	-> [ ^ self genLowcodeUint64Great ].
			[31]	-> [ ^ self genLowcodeUint32ToFloat64 ].
			[32]	-> [ ^ self genLowcodeUint32ToFloat32 ].
			[33]	-> [ ^ self genLowcodeUint32LessEqual ].
			[34]	-> [ ^ self genLowcodeUint32Less ].
			[35]	-> [ ^ self genLowcodeUint32GreatEqual ].
			[36]	-> [ ^ self genLowcodeUint32Great ].
			[37]	-> [ ^ self genLowcodeUdiv64 ].
			[38]	-> [ ^ self genLowcodeUdiv32 ].
			[39]	-> [ ^ self genLowcodeTruncate64To8 ].
			[40]	-> [ ^ self genLowcodeTruncate64To32 ].
			[41]	-> [ ^ self genLowcodeTruncate64To16 ].
			[42]	-> [ ^ self genLowcodeTruncate32To8 ].
			[43]	-> [ ^ self genLowcodeTruncate32To16 ].
			[44]	-> [ ^ self genLowcodeSub64 ].
			[45]	-> [ ^ self genLowcodeSub32 ].
			[46]	-> [ ^ self genLowcodeStorePointerToMemory ].
			[47]	-> [ ^ self genLowcodeStoreLocalPointer ].
			[48]	-> [ ^ self genLowcodeStoreLocalInt8 ].
			[49]	-> [ ^ self genLowcodeStoreLocalInt64 ].
			[50]	-> [ ^ self genLowcodeStoreLocalInt32 ].
			[51]	-> [ ^ self genLowcodeStoreLocalInt16 ].
			[52]	-> [ ^ self genLowcodeStoreLocalFloat64 ].
			[53]	-> [ ^ self genLowcodeStoreLocalFloat32 ].
			[54]	-> [ ^ self genLowcodeStoreInt8ToMemory ].
			[55]	-> [ ^ self genLowcodeStoreInt64ToMemory ].
			[56]	-> [ ^ self genLowcodeStoreInt32ToMemory ].
			[57]	-> [ ^ self genLowcodeStoreInt16ToMemory ].
			[58]	-> [ ^ self genLowcodeStoreFloat64ToMemory ].
			[59]	-> [ ^ self genLowcodeStoreFloat32ToMemory ].
			[60]	-> [ ^ self genLowcodeSignExtend64From8 ].
			[61]	-> [ ^ self genLowcodeSignExtend64From32 ].
			[62]	-> [ ^ self genLowcodeSignExtend64From16 ].
			[63]	-> [ ^ self genLowcodeSignExtend32From8 ].
			[64]	-> [ ^ self genLowcodeSignExtend32From16 ].
			[65]	-> [ ^ self genLowcodeRightShift64 ].
			[66]	-> [ ^ self genLowcodeRightShift32 ].
		}
		otherwise: [ ^ self genUnaryInlinePrimitive2: prim ].
	^ 0

