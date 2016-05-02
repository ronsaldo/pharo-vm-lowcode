inline primitive generators dispatch generated code
genUnaryInlinePrimitive4: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[187]	-> [ ^ self genLowcodeFloat64Equal ].
			[188]	-> [ ^ self genLowcodeFloat64Div ].
			[189]	-> [ ^ self genLowcodeFloat64Add ].
			[190]	-> [ ^ self genLowcodeFloat32ToUInt64 ].
			[191]	-> [ ^ self genLowcodeFloat32ToUInt32 ].
			[192]	-> [ ^ self genLowcodeFloat32ToInt64 ].
			[193]	-> [ ^ self genLowcodeFloat32ToInt32 ].
			[194]	-> [ ^ self genLowcodeFloat32ToFloat64 ].
			[195]	-> [ ^ self genLowcodeFloat32Sub ].
			[196]	-> [ ^ self genLowcodeFloat32NotEqual ].
			[197]	-> [ ^ self genLowcodeFloat32Mul ].
			[198]	-> [ ^ self genLowcodeFloat32LessEqual ].
			[199]	-> [ ^ self genLowcodeFloat32Less ].
			[200]	-> [ ^ self genLowcodeFloat32GreatEqual ].
			[201]	-> [ ^ self genLowcodeFloat32Great ].
			[202]	-> [ ^ self genLowcodeFloat32Equal ].
			[203]	-> [ ^ self genLowcodeFloat32Div ].
			[204]	-> [ ^ self genLowcodeFloat32Add ].
			[205]	-> [ ^ self genLowcodeEndCallNoCleanup ].
			[206]	-> [ ^ self genLowcodeEndCall ].
			[207]	-> [ ^ self genLowcodeEffectiveAddress64 ].
			[208]	-> [ ^ self genLowcodeEffectiveAddress32 ].
			[209]	-> [ ^ self genLowcodeDuplicatePointer ].
			[210]	-> [ ^ self genLowcodeDuplicateInt64 ].
			[211]	-> [ ^ self genLowcodeDuplicateInt32 ].
			[212]	-> [ ^ self genLowcodeDuplicateFloat64 ].
			[213]	-> [ ^ self genLowcodeDuplicateFloat32 ].
			[214]	-> [ ^ self genLowcodeDiv64 ].
			[215]	-> [ ^ self genLowcodeDiv32 ].
			[216]	-> [ ^ self genLowcodeCompareAndSwap32 ].
			[217]	-> [ ^ self genLowcodeCheckSessionIdentifier ].
			[218]	-> [ ^ self genLowcodeCallPhysical ].
			[219]	-> [ ^ self genLowcodeCallInstruction ].
			[220]	-> [ ^ self genLowcodeCallArgumentStructure ].
			[221]	-> [ ^ self genLowcodeCallArgumentPointer ].
			[222]	-> [ ^ self genLowcodeCallArgumentInt64 ].
			[223]	-> [ ^ self genLowcodeCallArgumentInt32 ].
			[224]	-> [ ^ self genLowcodeCallArgumentFloat64 ].
			[225]	-> [ ^ self genLowcodeCallArgumentFloat32 ].
			[226]	-> [ ^ self genLowcodeBeginCall ].
			[227]	-> [ ^ self genLowcodeArithmeticRightShift64 ].
			[228]	-> [ ^ self genLowcodeArithmeticRightShift32 ].
			[229]	-> [ ^ self genLowcodeAnd64 ].
			[230]	-> [ ^ self genLowcodeAnd32 ].
			[231]	-> [ ^ self genLowcodeAlloca64 ].
			[232]	-> [ ^ self genLowcodeAlloca32 ].
			[233]	-> [ ^ self genLowcodeAdd64 ].
			[234]	-> [ ^ self genLowcodeAdd32 ].
		}
		otherwise: [ ^ self genOptimizedUnaryInlinePrimitive: prim ].
	^ 0

