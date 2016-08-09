inline primitive generators dispatch generated code
genLowcodeUnaryInlinePrimitive: prim
	<option: #LowcodeVM>	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[0]	-> [ ^ self genLowcodeAdd32 ].
			[1]	-> [ ^ self genLowcodeAdd64 ].
			[2]	-> [ ^ self genLowcodeAlloca32 ].
			[3]	-> [ ^ self genLowcodeAlloca64 ].
			[4]	-> [ ^ self genLowcodeAnd32 ].
			[5]	-> [ ^ self genLowcodeAnd64 ].
			[6]	-> [ ^ self genLowcodeArithmeticRightShift32 ].
			[7]	-> [ ^ self genLowcodeArithmeticRightShift64 ].
			[8]	-> [ ^ self genLowcodeBeginCall ].
			[9]	-> [ ^ self genLowcodeCallArgumentFloat32 ].
			[10]	-> [ ^ self genLowcodeCallArgumentFloat64 ].
			[11]	-> [ ^ self genLowcodeCallArgumentInt32 ].
			[12]	-> [ ^ self genLowcodeCallArgumentInt64 ].
			[13]	-> [ ^ self genLowcodeCallArgumentPointer ].
			[14]	-> [ ^ self genLowcodeCallArgumentStructure ].
			[15]	-> [ ^ self genLowcodeCallInstruction ].
			[16]	-> [ ^ self genLowcodeCallPhysical ].
			[17]	-> [ ^ self genLowcodeCheckSessionIdentifier ].
			[18]	-> [ ^ self genLowcodeCompareAndSwap32 ].
			[19]	-> [ ^ self genLowcodeDiv32 ].
			[20]	-> [ ^ self genLowcodeDiv64 ].
			[21]	-> [ ^ self genLowcodeDuplicateFloat32 ].
			[22]	-> [ ^ self genLowcodeDuplicateFloat64 ].
			[23]	-> [ ^ self genLowcodeDuplicateInt32 ].
			[24]	-> [ ^ self genLowcodeDuplicateInt64 ].
			[25]	-> [ ^ self genLowcodeDuplicatePointer ].
			[26]	-> [ ^ self genLowcodeEffectiveAddress32 ].
			[27]	-> [ ^ self genLowcodeEffectiveAddress64 ].
			[28]	-> [ ^ self genLowcodeEndCall ].
			[29]	-> [ ^ self genLowcodeEndCallNoCleanup ].
			[30]	-> [ ^ self genLowcodeFloat32Add ].
			[31]	-> [ ^ self genLowcodeFloat32Div ].
			[32]	-> [ ^ self genLowcodeFloat32Equal ].
			[33]	-> [ ^ self genLowcodeFloat32Great ].
			[34]	-> [ ^ self genLowcodeFloat32GreatEqual ].
			[35]	-> [ ^ self genLowcodeFloat32Less ].
			[36]	-> [ ^ self genLowcodeFloat32LessEqual ].
			[37]	-> [ ^ self genLowcodeFloat32Mul ].
			[38]	-> [ ^ self genLowcodeFloat32Neg ].
			[39]	-> [ ^ self genLowcodeFloat32NotEqual ].
			[40]	-> [ ^ self genLowcodeFloat32Sqrt ].
			[41]	-> [ ^ self genLowcodeFloat32Sub ].
			[42]	-> [ ^ self genLowcodeFloat32ToFloat64 ].
			[43]	-> [ ^ self genLowcodeFloat32ToInt32 ].
			[44]	-> [ ^ self genLowcodeFloat32ToInt64 ].
			[45]	-> [ ^ self genLowcodeFloat32ToUInt32 ].
			[46]	-> [ ^ self genLowcodeFloat32ToUInt64 ].
			[47]	-> [ ^ self genLowcodeFloat64Add ].
			[48]	-> [ ^ self genLowcodeFloat64Div ].
			[49]	-> [ ^ self genLowcodeFloat64Equal ].
			[50]	-> [ ^ self genLowcodeFloat64Great ].
			[51]	-> [ ^ self genLowcodeFloat64GreatEqual ].
			[52]	-> [ ^ self genLowcodeFloat64Less ].
			[53]	-> [ ^ self genLowcodeFloat64LessEqual ].
			[54]	-> [ ^ self genLowcodeFloat64Mul ].
			[55]	-> [ ^ self genLowcodeFloat64Neg ].
			[56]	-> [ ^ self genLowcodeFloat64NotEqual ].
			[57]	-> [ ^ self genLowcodeFloat64Sqrt ].
			[58]	-> [ ^ self genLowcodeFloat64Sub ].
			[59]	-> [ ^ self genLowcodeFloat64ToFloat32 ].
		}
		otherwise: [ ^ self genLowcodeUnaryInlinePrimitive2: prim ].
	^ 0

