inline primitive generators dispatch generated code
genUnaryInlinePrimitive: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[7]	-> [ ^ self genLowcodeAdd32 ].
			[8]	-> [ ^ self genLowcodeAdd64 ].
			[9]	-> [ ^ self genLowcodeAlloca32 ].
			[10]	-> [ ^ self genLowcodeAlloca64 ].
			[11]	-> [ ^ self genLowcodeAnd32 ].
			[12]	-> [ ^ self genLowcodeAnd64 ].
			[13]	-> [ ^ self genLowcodeArithmeticRightShift32 ].
			[14]	-> [ ^ self genLowcodeArithmeticRightShift64 ].
			[15]	-> [ ^ self genLowcodeBeginCall ].
			[16]	-> [ ^ self genLowcodeCallArgumentFloat32 ].
			[17]	-> [ ^ self genLowcodeCallArgumentFloat64 ].
			[18]	-> [ ^ self genLowcodeCallArgumentInt32 ].
			[19]	-> [ ^ self genLowcodeCallArgumentInt64 ].
			[20]	-> [ ^ self genLowcodeCallArgumentPointer ].
			[21]	-> [ ^ self genLowcodeCallArgumentStructure ].
			[22]	-> [ ^ self genLowcodeCallInstruction ].
			[23]	-> [ ^ self genLowcodeCallPhysical ].
			[24]	-> [ ^ self genLowcodeCheckSessionIdentifier ].
			[25]	-> [ ^ self genLowcodeCompareAndSwap32 ].
			[26]	-> [ ^ self genLowcodeDiv32 ].
			[27]	-> [ ^ self genLowcodeDiv64 ].
			[28]	-> [ ^ self genLowcodeDuplicateFloat32 ].
			[29]	-> [ ^ self genLowcodeDuplicateFloat64 ].
			[30]	-> [ ^ self genLowcodeDuplicateInt32 ].
			[31]	-> [ ^ self genLowcodeDuplicateInt64 ].
			[32]	-> [ ^ self genLowcodeDuplicatePointer ].
			[33]	-> [ ^ self genLowcodeEffectiveAddress32 ].
			[34]	-> [ ^ self genLowcodeEffectiveAddress64 ].
			[35]	-> [ ^ self genLowcodeEndCall ].
			[36]	-> [ ^ self genLowcodeEndCallNoCleanup ].
			[37]	-> [ ^ self genLowcodeFloat32Add ].
			[38]	-> [ ^ self genLowcodeFloat32Div ].
			[39]	-> [ ^ self genLowcodeFloat32Equal ].
			[40]	-> [ ^ self genLowcodeFloat32Great ].
			[41]	-> [ ^ self genLowcodeFloat32GreatEqual ].
			[42]	-> [ ^ self genLowcodeFloat32Less ].
			[43]	-> [ ^ self genLowcodeFloat32LessEqual ].
			[44]	-> [ ^ self genLowcodeFloat32Mul ].
			[45]	-> [ ^ self genLowcodeFloat32Neg ].
			[46]	-> [ ^ self genLowcodeFloat32NotEqual ].
			[47]	-> [ ^ self genLowcodeFloat32Sqrt ].
			[48]	-> [ ^ self genLowcodeFloat32Sub ].
			[49]	-> [ ^ self genLowcodeFloat32ToFloat64 ].
			[50]	-> [ ^ self genLowcodeFloat32ToInt32 ].
			[51]	-> [ ^ self genLowcodeFloat32ToInt64 ].
			[52]	-> [ ^ self genLowcodeFloat32ToUInt32 ].
			[53]	-> [ ^ self genLowcodeFloat32ToUInt64 ].
			[54]	-> [ ^ self genLowcodeFloat64Add ].
			[55]	-> [ ^ self genLowcodeFloat64Div ].
			[56]	-> [ ^ self genLowcodeFloat64Equal ].
			[57]	-> [ ^ self genLowcodeFloat64Great ].
			[58]	-> [ ^ self genLowcodeFloat64GreatEqual ].
			[59]	-> [ ^ self genLowcodeFloat64Less ].
			[60]	-> [ ^ self genLowcodeFloat64LessEqual ].
			[61]	-> [ ^ self genLowcodeFloat64Mul ].
			[62]	-> [ ^ self genLowcodeFloat64Neg ].
			[63]	-> [ ^ self genLowcodeFloat64NotEqual ].
			[64]	-> [ ^ self genLowcodeFloat64Sqrt ].
			[65]	-> [ ^ self genLowcodeFloat64Sub ].
			[66]	-> [ ^ self genLowcodeFloat64ToFloat32 ].
		}
		otherwise: [ ^ self genUnaryInlinePrimitive2: prim ].
	^ 0

