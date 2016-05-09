inline primitive generators dispatch generated code
genUnaryInlinePrimitive4: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[187]	-> [ ^ self genLowcodeSignExtend32From16 ].
			[188]	-> [ ^ self genLowcodeSignExtend32From8 ].
			[189]	-> [ ^ self genLowcodeSignExtend64From16 ].
			[190]	-> [ ^ self genLowcodeSignExtend64From32 ].
			[191]	-> [ ^ self genLowcodeSignExtend64From8 ].
			[192]	-> [ ^ self genLowcodeStoreFloat32ToMemory ].
			[193]	-> [ ^ self genLowcodeStoreFloat64ToMemory ].
			[194]	-> [ ^ self genLowcodeStoreInt16ToMemory ].
			[195]	-> [ ^ self genLowcodeStoreInt32ToMemory ].
			[196]	-> [ ^ self genLowcodeStoreInt64ToMemory ].
			[197]	-> [ ^ self genLowcodeStoreInt8ToMemory ].
			[198]	-> [ ^ self genLowcodeStoreLocalFloat32 ].
			[199]	-> [ ^ self genLowcodeStoreLocalFloat64 ].
			[200]	-> [ ^ self genLowcodeStoreLocalInt16 ].
			[201]	-> [ ^ self genLowcodeStoreLocalInt32 ].
			[202]	-> [ ^ self genLowcodeStoreLocalInt64 ].
			[203]	-> [ ^ self genLowcodeStoreLocalInt8 ].
			[204]	-> [ ^ self genLowcodeStoreLocalPointer ].
			[205]	-> [ ^ self genLowcodeStorePointerToMemory ].
			[206]	-> [ ^ self genLowcodeSub32 ].
			[207]	-> [ ^ self genLowcodeSub64 ].
			[208]	-> [ ^ self genLowcodeTruncate32To16 ].
			[209]	-> [ ^ self genLowcodeTruncate32To8 ].
			[210]	-> [ ^ self genLowcodeTruncate64To16 ].
			[211]	-> [ ^ self genLowcodeTruncate64To32 ].
			[212]	-> [ ^ self genLowcodeTruncate64To8 ].
			[213]	-> [ ^ self genLowcodeUdiv32 ].
			[214]	-> [ ^ self genLowcodeUdiv64 ].
			[215]	-> [ ^ self genLowcodeUint32Great ].
			[216]	-> [ ^ self genLowcodeUint32GreatEqual ].
			[217]	-> [ ^ self genLowcodeUint32Less ].
			[218]	-> [ ^ self genLowcodeUint32LessEqual ].
			[219]	-> [ ^ self genLowcodeUint32ToFloat32 ].
			[220]	-> [ ^ self genLowcodeUint32ToFloat64 ].
			[221]	-> [ ^ self genLowcodeUint64Great ].
			[222]	-> [ ^ self genLowcodeUint64GreatEqual ].
			[223]	-> [ ^ self genLowcodeUint64Less ].
			[224]	-> [ ^ self genLowcodeUint64LessEqual ].
			[225]	-> [ ^ self genLowcodeUint64ToFloat32 ].
			[226]	-> [ ^ self genLowcodeUint64ToFloat64 ].
			[227]	-> [ ^ self genLowcodeUmul32 ].
			[228]	-> [ ^ self genLowcodeUmul64 ].
			[229]	-> [ ^ self genLowcodeUnlockRegisters ].
			[230]	-> [ ^ self genLowcodeUnlockVM ].
			[231]	-> [ ^ self genLowcodeUrem32 ].
			[232]	-> [ ^ self genLowcodeUrem64 ].
			[233]	-> [ ^ self genLowcodeXor32 ].
			[234]	-> [ ^ self genLowcodeXor64 ].
			[235]	-> [ ^ self genLowcodeZeroExtend32From16 ].
			[236]	-> [ ^ self genLowcodeZeroExtend32From8 ].
			[237]	-> [ ^ self genLowcodeZeroExtend64From16 ].
			[238]	-> [ ^ self genLowcodeZeroExtend64From32 ].
			[239]	-> [ ^ self genLowcodeZeroExtend64From8 ].
		}
		otherwise: [ ^ self genOptimizedUnaryInlinePrimitive: prim ].
	^ 0

