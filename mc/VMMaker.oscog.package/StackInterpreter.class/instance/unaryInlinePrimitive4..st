inline primitive dispatch generated code
unaryInlinePrimitive4: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[187]	-> [ ^ self lowcodePrimitiveFloat64Equal ].
			[188]	-> [ ^ self lowcodePrimitiveFloat64Div ].
			[189]	-> [ ^ self lowcodePrimitiveFloat64Add ].
			[190]	-> [ ^ self lowcodePrimitiveFloat32ToUInt64 ].
			[191]	-> [ ^ self lowcodePrimitiveFloat32ToUInt32 ].
			[192]	-> [ ^ self lowcodePrimitiveFloat32ToInt64 ].
			[193]	-> [ ^ self lowcodePrimitiveFloat32ToInt32 ].
			[194]	-> [ ^ self lowcodePrimitiveFloat32ToFloat64 ].
			[195]	-> [ ^ self lowcodePrimitiveFloat32Sub ].
			[196]	-> [ ^ self lowcodePrimitiveFloat32NotEqual ].
			[197]	-> [ ^ self lowcodePrimitiveFloat32Mul ].
			[198]	-> [ ^ self lowcodePrimitiveFloat32LessEqual ].
			[199]	-> [ ^ self lowcodePrimitiveFloat32Less ].
			[200]	-> [ ^ self lowcodePrimitiveFloat32GreatEqual ].
			[201]	-> [ ^ self lowcodePrimitiveFloat32Great ].
			[202]	-> [ ^ self lowcodePrimitiveFloat32Equal ].
			[203]	-> [ ^ self lowcodePrimitiveFloat32Div ].
			[204]	-> [ ^ self lowcodePrimitiveFloat32Add ].
			[205]	-> [ ^ self lowcodePrimitiveEndCallNoCleanup ].
			[206]	-> [ ^ self lowcodePrimitiveEndCall ].
			[207]	-> [ ^ self lowcodePrimitiveEffectiveAddress64 ].
			[208]	-> [ ^ self lowcodePrimitiveEffectiveAddress32 ].
			[209]	-> [ ^ self lowcodePrimitiveDuplicatePointer ].
			[210]	-> [ ^ self lowcodePrimitiveDuplicateInt64 ].
			[211]	-> [ ^ self lowcodePrimitiveDuplicateInt32 ].
			[212]	-> [ ^ self lowcodePrimitiveDuplicateFloat64 ].
			[213]	-> [ ^ self lowcodePrimitiveDuplicateFloat32 ].
			[214]	-> [ ^ self lowcodePrimitiveDiv64 ].
			[215]	-> [ ^ self lowcodePrimitiveDiv32 ].
			[216]	-> [ ^ self lowcodePrimitiveCompareAndSwap32 ].
			[217]	-> [ ^ self lowcodePrimitiveCheckSessionIdentifier ].
			[218]	-> [ ^ self lowcodePrimitiveCallPhysical ].
			[219]	-> [ ^ self lowcodePrimitiveCallInstruction ].
			[220]	-> [ ^ self lowcodePrimitiveCallArgumentStructure ].
			[221]	-> [ ^ self lowcodePrimitiveCallArgumentPointer ].
			[222]	-> [ ^ self lowcodePrimitiveCallArgumentInt64 ].
			[223]	-> [ ^ self lowcodePrimitiveCallArgumentInt32 ].
			[224]	-> [ ^ self lowcodePrimitiveCallArgumentFloat64 ].
			[225]	-> [ ^ self lowcodePrimitiveCallArgumentFloat32 ].
			[226]	-> [ ^ self lowcodePrimitiveBeginCall ].
			[227]	-> [ ^ self lowcodePrimitiveArithmeticRightShift64 ].
			[228]	-> [ ^ self lowcodePrimitiveArithmeticRightShift32 ].
			[229]	-> [ ^ self lowcodePrimitiveAnd64 ].
			[230]	-> [ ^ self lowcodePrimitiveAnd32 ].
			[231]	-> [ ^ self lowcodePrimitiveAlloca64 ].
			[232]	-> [ ^ self lowcodePrimitiveAlloca32 ].
			[233]	-> [ ^ self lowcodePrimitiveAdd64 ].
			[234]	-> [ ^ self lowcodePrimitiveAdd32 ].
		}
		otherwise: [ ^ self optimizedUnaryInlinePrimitive: prim ].
	

