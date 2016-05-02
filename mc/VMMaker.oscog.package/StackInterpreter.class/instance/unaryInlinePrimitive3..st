inline primitive dispatch generated code
unaryInlinePrimitive3: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[127]	-> [ ^ self lowcodePrimitiveMalloc32 ].
			[128]	-> [ ^ self lowcodePrimitiveLockVM ].
			[129]	-> [ ^ self lowcodePrimitiveLockRegisters ].
			[130]	-> [ ^ self lowcodePrimitiveLocalFrameSize ].
			[131]	-> [ ^ self lowcodePrimitiveLoadUInt8FromMemory ].
			[132]	-> [ ^ self lowcodePrimitiveLoadUInt64FromMemory ].
			[133]	-> [ ^ self lowcodePrimitiveLoadUInt32FromMemory ].
			[134]	-> [ ^ self lowcodePrimitiveLoadUInt16FromMemory ].
			[135]	-> [ ^ self lowcodePrimitiveLoadPointerFromMemory ].
			[136]	-> [ ^ self lowcodePrimitiveLoadLocalUInt8 ].
			[137]	-> [ ^ self lowcodePrimitiveLoadLocalUInt64 ].
			[138]	-> [ ^ self lowcodePrimitiveLoadLocalUInt32 ].
			[139]	-> [ ^ self lowcodePrimitiveLoadLocalUInt16 ].
			[140]	-> [ ^ self lowcodePrimitiveLoadLocalPointer ].
			[141]	-> [ ^ self lowcodePrimitiveLoadLocalInt8 ].
			[142]	-> [ ^ self lowcodePrimitiveLoadLocalInt64 ].
			[143]	-> [ ^ self lowcodePrimitiveLoadLocalInt32 ].
			[144]	-> [ ^ self lowcodePrimitiveLoadLocalInt16 ].
			[145]	-> [ ^ self lowcodePrimitiveLoadLocalFloat64 ].
			[146]	-> [ ^ self lowcodePrimitiveLoadLocalFloat32 ].
			[147]	-> [ ^ self lowcodePrimitiveLoadLocalAddress ].
			[148]	-> [ ^ self lowcodePrimitiveLoadInt8FromMemory ].
			[149]	-> [ ^ self lowcodePrimitiveLoadInt64FromMemory ].
			[150]	-> [ ^ self lowcodePrimitiveLoadInt32FromMemory ].
			[151]	-> [ ^ self lowcodePrimitiveLoadInt16FromMemory ].
			[152]	-> [ ^ self lowcodePrimitiveLoadFloat64FromMemory ].
			[153]	-> [ ^ self lowcodePrimitiveLoadFloat32FromMemory ].
			[154]	-> [ ^ self lowcodePrimitiveLeftShift64 ].
			[155]	-> [ ^ self lowcodePrimitiveLeftShift32 ].
			[156]	-> [ ^ self lowcodePrimitiveInt64ToPointer ].
			[157]	-> [ ^ self lowcodePrimitiveInt64ToFloat64 ].
			[158]	-> [ ^ self lowcodePrimitiveInt64ToFloat32 ].
			[159]	-> [ ^ self lowcodePrimitiveInt64NotEqual ].
			[160]	-> [ ^ self lowcodePrimitiveInt64LessEqual ].
			[161]	-> [ ^ self lowcodePrimitiveInt64Less ].
			[162]	-> [ ^ self lowcodePrimitiveInt64GreatEqual ].
			[163]	-> [ ^ self lowcodePrimitiveInt64Great ].
			[164]	-> [ ^ self lowcodePrimitiveInt64Equal ].
			[165]	-> [ ^ self lowcodePrimitiveInt32ToPointer ].
			[166]	-> [ ^ self lowcodePrimitiveInt32ToFloat64 ].
			[167]	-> [ ^ self lowcodePrimitiveInt32ToFloat32 ].
			[168]	-> [ ^ self lowcodePrimitiveInt32NotEqual ].
			[169]	-> [ ^ self lowcodePrimitiveInt32LessEqual ].
			[170]	-> [ ^ self lowcodePrimitiveInt32Less ].
			[171]	-> [ ^ self lowcodePrimitiveInt32GreatEqual ].
			[172]	-> [ ^ self lowcodePrimitiveInt32Great ].
			[173]	-> [ ^ self lowcodePrimitiveInt32Equal ].
			[174]	-> [ ^ self lowcodePrimitiveFree ].
			[175]	-> [ ^ self lowcodePrimitiveFloat64ToUInt64 ].
			[176]	-> [ ^ self lowcodePrimitiveFloat64ToUInt32 ].
			[177]	-> [ ^ self lowcodePrimitiveFloat64ToInt64 ].
			[178]	-> [ ^ self lowcodePrimitiveFloat64ToInt32 ].
			[179]	-> [ ^ self lowcodePrimitiveFloat64ToFloat32 ].
			[180]	-> [ ^ self lowcodePrimitiveFloat64Sub ].
			[181]	-> [ ^ self lowcodePrimitiveFloat64NotEqual ].
			[182]	-> [ ^ self lowcodePrimitiveFloat64Mul ].
			[183]	-> [ ^ self lowcodePrimitiveFloat64LessEqual ].
			[184]	-> [ ^ self lowcodePrimitiveFloat64Less ].
			[185]	-> [ ^ self lowcodePrimitiveFloat64GreatEqual ].
			[186]	-> [ ^ self lowcodePrimitiveFloat64Great ].
		}
		otherwise: [ ^ self unaryInlinePrimitive4: prim ].
	

