inline primitive generators dispatch generated code
genLowcodeUnaryInlinePrimitive4: prim
	<option: #LowcodeVM>	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[180]	-> [ ^ self genLowcodeSignExtend32From16 ].
			[181]	-> [ ^ self genLowcodeSignExtend32From8 ].
			[182]	-> [ ^ self genLowcodeSignExtend64From16 ].
			[183]	-> [ ^ self genLowcodeSignExtend64From32 ].
			[184]	-> [ ^ self genLowcodeSignExtend64From8 ].
			[185]	-> [ ^ self genLowcodeStoreFloat32ToMemory ].
			[186]	-> [ ^ self genLowcodeStoreFloat64ToMemory ].
			[187]	-> [ ^ self genLowcodeStoreInt16ToMemory ].
			[188]	-> [ ^ self genLowcodeStoreInt32ToMemory ].
			[189]	-> [ ^ self genLowcodeStoreInt64ToMemory ].
			[190]	-> [ ^ self genLowcodeStoreInt8ToMemory ].
			[191]	-> [ ^ self genLowcodeStoreLocalFloat32 ].
			[192]	-> [ ^ self genLowcodeStoreLocalFloat64 ].
			[193]	-> [ ^ self genLowcodeStoreLocalInt16 ].
			[194]	-> [ ^ self genLowcodeStoreLocalInt32 ].
			[195]	-> [ ^ self genLowcodeStoreLocalInt64 ].
			[196]	-> [ ^ self genLowcodeStoreLocalInt8 ].
			[197]	-> [ ^ self genLowcodeStoreLocalPointer ].
			[198]	-> [ ^ self genLowcodeStorePointerToMemory ].
			[199]	-> [ ^ self genLowcodeSub32 ].
			[200]	-> [ ^ self genLowcodeSub64 ].
			[201]	-> [ ^ self genLowcodeTruncate32To16 ].
			[202]	-> [ ^ self genLowcodeTruncate32To8 ].
			[203]	-> [ ^ self genLowcodeTruncate64To16 ].
			[204]	-> [ ^ self genLowcodeTruncate64To32 ].
			[205]	-> [ ^ self genLowcodeTruncate64To8 ].
			[206]	-> [ ^ self genLowcodeUdiv32 ].
			[207]	-> [ ^ self genLowcodeUdiv64 ].
			[208]	-> [ ^ self genLowcodeUint32Great ].
			[209]	-> [ ^ self genLowcodeUint32GreatEqual ].
			[210]	-> [ ^ self genLowcodeUint32Less ].
			[211]	-> [ ^ self genLowcodeUint32LessEqual ].
			[212]	-> [ ^ self genLowcodeUint32ToFloat32 ].
			[213]	-> [ ^ self genLowcodeUint32ToFloat64 ].
			[214]	-> [ ^ self genLowcodeUint64Great ].
			[215]	-> [ ^ self genLowcodeUint64GreatEqual ].
			[216]	-> [ ^ self genLowcodeUint64Less ].
			[217]	-> [ ^ self genLowcodeUint64LessEqual ].
			[218]	-> [ ^ self genLowcodeUint64ToFloat32 ].
			[219]	-> [ ^ self genLowcodeUint64ToFloat64 ].
			[220]	-> [ ^ self genLowcodeUmul32 ].
			[221]	-> [ ^ self genLowcodeUmul64 ].
			[222]	-> [ ^ self genLowcodeUnlockRegisters ].
			[223]	-> [ ^ self genLowcodeUnlockVM ].
			[224]	-> [ ^ self genLowcodeUrem32 ].
			[225]	-> [ ^ self genLowcodeUrem64 ].
			[226]	-> [ ^ self genLowcodeXor32 ].
			[227]	-> [ ^ self genLowcodeXor64 ].
			[228]	-> [ ^ self genLowcodeZeroExtend32From16 ].
			[229]	-> [ ^ self genLowcodeZeroExtend32From8 ].
			[230]	-> [ ^ self genLowcodeZeroExtend64From16 ].
			[231]	-> [ ^ self genLowcodeZeroExtend64From32 ].
			[232]	-> [ ^ self genLowcodeZeroExtend64From8 ].
		}
		otherwise: [ ^ EncounteredUnknownBytecode ].
	^ 0

