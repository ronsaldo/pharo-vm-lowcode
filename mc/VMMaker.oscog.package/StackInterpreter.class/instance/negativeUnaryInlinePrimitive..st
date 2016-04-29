inline primitive dispatch generated code
negativeUnaryInlinePrimitive: prim
	"Lowcode instruction interpreter dispatch"
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
			[38]	-> [ ^ self lowcodePrimitiveFloat32NotEqual ].
			[39]	-> [ ^ self lowcodePrimitiveFloat32Sub ].
			[40]	-> [ ^ self lowcodePrimitiveFloat32ToFloat64 ].
			[41]	-> [ ^ self lowcodePrimitiveFloat32ToInt32 ].
			[42]	-> [ ^ self lowcodePrimitiveFloat32ToInt64 ].
			[43]	-> [ ^ self lowcodePrimitiveFloat32ToUInt32 ].
			[44]	-> [ ^ self lowcodePrimitiveFloat32ToUInt64 ].
			[45]	-> [ ^ self lowcodePrimitiveFloat64Add ].
			[46]	-> [ ^ self lowcodePrimitiveFloat64Div ].
			[47]	-> [ ^ self lowcodePrimitiveFloat64Equal ].
			[48]	-> [ ^ self lowcodePrimitiveFloat64Great ].
			[49]	-> [ ^ self lowcodePrimitiveFloat64GreatEqual ].
			[50]	-> [ ^ self lowcodePrimitiveFloat64Less ].
			[51]	-> [ ^ self lowcodePrimitiveFloat64LessEqual ].
			[52]	-> [ ^ self lowcodePrimitiveFloat64Mul ].
			[53]	-> [ ^ self lowcodePrimitiveFloat64NotEqual ].
			[54]	-> [ ^ self lowcodePrimitiveFloat64Sub ].
			[55]	-> [ ^ self lowcodePrimitiveFloat64ToFloat32 ].
			[56]	-> [ ^ self lowcodePrimitiveFloat64ToInt32 ].
			[57]	-> [ ^ self lowcodePrimitiveFloat64ToInt64 ].
			[58]	-> [ ^ self lowcodePrimitiveFloat64ToUInt32 ].
			[59]	-> [ ^ self lowcodePrimitiveFloat64ToUInt64 ].
		}
		otherwise: [ ^ self negativeUnaryInlinePrimitive2: prim ].
	

