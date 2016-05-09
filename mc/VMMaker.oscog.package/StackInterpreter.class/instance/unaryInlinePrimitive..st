inline primitive dispatch generated code
unaryInlinePrimitive: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[7]	-> [ ^ self lowcodePrimitiveAdd32 ].
			[8]	-> [ ^ self lowcodePrimitiveAdd64 ].
			[9]	-> [ ^ self lowcodePrimitiveAlloca32 ].
			[10]	-> [ ^ self lowcodePrimitiveAlloca64 ].
			[11]	-> [ ^ self lowcodePrimitiveAnd32 ].
			[12]	-> [ ^ self lowcodePrimitiveAnd64 ].
			[13]	-> [ ^ self lowcodePrimitiveArithmeticRightShift32 ].
			[14]	-> [ ^ self lowcodePrimitiveArithmeticRightShift64 ].
			[15]	-> [ ^ self lowcodePrimitiveBeginCall ].
			[16]	-> [ ^ self lowcodePrimitiveCallArgumentFloat32 ].
			[17]	-> [ ^ self lowcodePrimitiveCallArgumentFloat64 ].
			[18]	-> [ ^ self lowcodePrimitiveCallArgumentInt32 ].
			[19]	-> [ ^ self lowcodePrimitiveCallArgumentInt64 ].
			[20]	-> [ ^ self lowcodePrimitiveCallArgumentPointer ].
			[21]	-> [ ^ self lowcodePrimitiveCallArgumentStructure ].
			[22]	-> [ ^ self lowcodePrimitiveCallInstruction ].
			[23]	-> [ ^ self lowcodePrimitiveCallPhysical ].
			[24]	-> [ ^ self lowcodePrimitiveCheckSessionIdentifier ].
			[25]	-> [ ^ self lowcodePrimitiveCompareAndSwap32 ].
			[26]	-> [ ^ self lowcodePrimitiveDiv32 ].
			[27]	-> [ ^ self lowcodePrimitiveDiv64 ].
			[28]	-> [ ^ self lowcodePrimitiveDuplicateFloat32 ].
			[29]	-> [ ^ self lowcodePrimitiveDuplicateFloat64 ].
			[30]	-> [ ^ self lowcodePrimitiveDuplicateInt32 ].
			[31]	-> [ ^ self lowcodePrimitiveDuplicateInt64 ].
			[32]	-> [ ^ self lowcodePrimitiveDuplicatePointer ].
			[33]	-> [ ^ self lowcodePrimitiveEffectiveAddress32 ].
			[34]	-> [ ^ self lowcodePrimitiveEffectiveAddress64 ].
			[35]	-> [ ^ self lowcodePrimitiveEndCall ].
			[36]	-> [ ^ self lowcodePrimitiveEndCallNoCleanup ].
			[37]	-> [ ^ self lowcodePrimitiveFloat32Add ].
			[38]	-> [ ^ self lowcodePrimitiveFloat32Div ].
			[39]	-> [ ^ self lowcodePrimitiveFloat32Equal ].
			[40]	-> [ ^ self lowcodePrimitiveFloat32Great ].
			[41]	-> [ ^ self lowcodePrimitiveFloat32GreatEqual ].
			[42]	-> [ ^ self lowcodePrimitiveFloat32Less ].
			[43]	-> [ ^ self lowcodePrimitiveFloat32LessEqual ].
			[44]	-> [ ^ self lowcodePrimitiveFloat32Mul ].
			[45]	-> [ ^ self lowcodePrimitiveFloat32Neg ].
			[46]	-> [ ^ self lowcodePrimitiveFloat32NotEqual ].
			[47]	-> [ ^ self lowcodePrimitiveFloat32Sqrt ].
			[48]	-> [ ^ self lowcodePrimitiveFloat32Sub ].
			[49]	-> [ ^ self lowcodePrimitiveFloat32ToFloat64 ].
			[50]	-> [ ^ self lowcodePrimitiveFloat32ToInt32 ].
			[51]	-> [ ^ self lowcodePrimitiveFloat32ToInt64 ].
			[52]	-> [ ^ self lowcodePrimitiveFloat32ToUInt32 ].
			[53]	-> [ ^ self lowcodePrimitiveFloat32ToUInt64 ].
			[54]	-> [ ^ self lowcodePrimitiveFloat64Add ].
			[55]	-> [ ^ self lowcodePrimitiveFloat64Div ].
			[56]	-> [ ^ self lowcodePrimitiveFloat64Equal ].
			[57]	-> [ ^ self lowcodePrimitiveFloat64Great ].
			[58]	-> [ ^ self lowcodePrimitiveFloat64GreatEqual ].
			[59]	-> [ ^ self lowcodePrimitiveFloat64Less ].
			[60]	-> [ ^ self lowcodePrimitiveFloat64LessEqual ].
			[61]	-> [ ^ self lowcodePrimitiveFloat64Mul ].
			[62]	-> [ ^ self lowcodePrimitiveFloat64Neg ].
			[63]	-> [ ^ self lowcodePrimitiveFloat64NotEqual ].
			[64]	-> [ ^ self lowcodePrimitiveFloat64Sqrt ].
			[65]	-> [ ^ self lowcodePrimitiveFloat64Sub ].
			[66]	-> [ ^ self lowcodePrimitiveFloat64ToFloat32 ].
		}
		otherwise: [ ^ self unaryInlinePrimitive2: prim ].
	

