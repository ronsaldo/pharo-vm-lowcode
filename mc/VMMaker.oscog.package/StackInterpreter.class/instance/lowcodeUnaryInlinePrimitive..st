inline primitive dispatch generated code
lowcodeUnaryInlinePrimitive: prim
	<option: #LowcodeVM>	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[0]	-> [ ^ self lowcodePrimitiveAdd32 ].
			[1]	-> [ ^ self lowcodePrimitiveAdd64 ].
			[2]	-> [ ^ self lowcodePrimitiveAlloca32 ].
			[3]	-> [ ^ self lowcodePrimitiveAlloca64 ].
			[4]	-> [ ^ self lowcodePrimitiveAnd32 ].
			[5]	-> [ ^ self lowcodePrimitiveAnd64 ].
			[6]	-> [ ^ self lowcodePrimitiveArithmeticRightShift32 ].
			[7]	-> [ ^ self lowcodePrimitiveArithmeticRightShift64 ].
			[8]	-> [ ^ self lowcodePrimitiveBeginCall ].
			[9]	-> [ ^ self lowcodePrimitiveCallArgumentFloat32 ].
			[10]	-> [ ^ self lowcodePrimitiveCallArgumentFloat64 ].
			[11]	-> [ ^ self lowcodePrimitiveCallArgumentInt32 ].
			[12]	-> [ ^ self lowcodePrimitiveCallArgumentInt64 ].
			[13]	-> [ ^ self lowcodePrimitiveCallArgumentPointer ].
			[14]	-> [ ^ self lowcodePrimitiveCallArgumentStructure ].
			[15]	-> [ ^ self lowcodePrimitiveCallInstruction ].
			[16]	-> [ ^ self lowcodePrimitiveCallPhysical ].
			[17]	-> [ ^ self lowcodePrimitiveCheckSessionIdentifier ].
			[18]	-> [ ^ self lowcodePrimitiveCompareAndSwap32 ].
			[19]	-> [ ^ self lowcodePrimitiveDiv32 ].
			[20]	-> [ ^ self lowcodePrimitiveDiv64 ].
			[21]	-> [ ^ self lowcodePrimitiveDuplicateFloat32 ].
			[22]	-> [ ^ self lowcodePrimitiveDuplicateFloat64 ].
			[23]	-> [ ^ self lowcodePrimitiveDuplicateInt32 ].
			[24]	-> [ ^ self lowcodePrimitiveDuplicateInt64 ].
			[25]	-> [ ^ self lowcodePrimitiveDuplicatePointer ].
			[26]	-> [ ^ self lowcodePrimitiveEffectiveAddress32 ].
			[27]	-> [ ^ self lowcodePrimitiveEffectiveAddress64 ].
			[28]	-> [ ^ self lowcodePrimitiveEndCall ].
			[29]	-> [ ^ self lowcodePrimitiveEndCallNoCleanup ].
			[30]	-> [ ^ self lowcodePrimitiveFloat32Add ].
			[31]	-> [ ^ self lowcodePrimitiveFloat32Div ].
			[32]	-> [ ^ self lowcodePrimitiveFloat32Equal ].
			[33]	-> [ ^ self lowcodePrimitiveFloat32Great ].
			[34]	-> [ ^ self lowcodePrimitiveFloat32GreatEqual ].
			[35]	-> [ ^ self lowcodePrimitiveFloat32Less ].
			[36]	-> [ ^ self lowcodePrimitiveFloat32LessEqual ].
			[37]	-> [ ^ self lowcodePrimitiveFloat32Mul ].
			[38]	-> [ ^ self lowcodePrimitiveFloat32Neg ].
			[39]	-> [ ^ self lowcodePrimitiveFloat32NotEqual ].
			[40]	-> [ ^ self lowcodePrimitiveFloat32Sqrt ].
			[41]	-> [ ^ self lowcodePrimitiveFloat32Sub ].
			[42]	-> [ ^ self lowcodePrimitiveFloat32ToFloat64 ].
			[43]	-> [ ^ self lowcodePrimitiveFloat32ToInt32 ].
			[44]	-> [ ^ self lowcodePrimitiveFloat32ToInt64 ].
			[45]	-> [ ^ self lowcodePrimitiveFloat32ToUInt32 ].
			[46]	-> [ ^ self lowcodePrimitiveFloat32ToUInt64 ].
			[47]	-> [ ^ self lowcodePrimitiveFloat64Add ].
			[48]	-> [ ^ self lowcodePrimitiveFloat64Div ].
			[49]	-> [ ^ self lowcodePrimitiveFloat64Equal ].
			[50]	-> [ ^ self lowcodePrimitiveFloat64Great ].
			[51]	-> [ ^ self lowcodePrimitiveFloat64GreatEqual ].
			[52]	-> [ ^ self lowcodePrimitiveFloat64Less ].
			[53]	-> [ ^ self lowcodePrimitiveFloat64LessEqual ].
			[54]	-> [ ^ self lowcodePrimitiveFloat64Mul ].
			[55]	-> [ ^ self lowcodePrimitiveFloat64Neg ].
			[56]	-> [ ^ self lowcodePrimitiveFloat64NotEqual ].
			[57]	-> [ ^ self lowcodePrimitiveFloat64Sqrt ].
			[58]	-> [ ^ self lowcodePrimitiveFloat64Sub ].
			[59]	-> [ ^ self lowcodePrimitiveFloat64ToFloat32 ].
		}
		otherwise: [ ^ self lowcodeUnaryInlinePrimitive2: prim ].
	

