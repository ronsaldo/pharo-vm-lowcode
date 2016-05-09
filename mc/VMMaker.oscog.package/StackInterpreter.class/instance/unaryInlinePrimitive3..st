inline primitive dispatch generated code
unaryInlinePrimitive3: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[127]	-> [ ^ self lowcodePrimitiveMemcpyFixed ].
			[128]	-> [ ^ self lowcodePrimitiveMoveFloat32ToPhysical ].
			[129]	-> [ ^ self lowcodePrimitiveMoveFloat64ToPhysical ].
			[130]	-> [ ^ self lowcodePrimitiveMoveInt32ToPhysical ].
			[131]	-> [ ^ self lowcodePrimitiveMoveInt64ToPhysical ].
			[132]	-> [ ^ self lowcodePrimitiveMovePointerToPhysical ].
			[133]	-> [ ^ self lowcodePrimitiveMul32 ].
			[134]	-> [ ^ self lowcodePrimitiveMul64 ].
			[135]	-> [ ^ self lowcodePrimitiveNeg32 ].
			[136]	-> [ ^ self lowcodePrimitiveNeg64 ].
			[137]	-> [ ^ self lowcodePrimitiveNot32 ].
			[138]	-> [ ^ self lowcodePrimitiveNot64 ].
			[139]	-> [ ^ self lowcodePrimitiveOr32 ].
			[140]	-> [ ^ self lowcodePrimitiveOr64 ].
			[141]	-> [ ^ self lowcodePrimitivePerformCallFloat32 ].
			[142]	-> [ ^ self lowcodePrimitivePerformCallFloat64 ].
			[143]	-> [ ^ self lowcodePrimitivePerformCallIndirectFloat32 ].
			[144]	-> [ ^ self lowcodePrimitivePerformCallIndirectFloat64 ].
			[145]	-> [ ^ self lowcodePrimitivePerformCallIndirectInt32 ].
			[146]	-> [ ^ self lowcodePrimitivePerformCallIndirectInt64 ].
			[147]	-> [ ^ self lowcodePrimitivePerformCallIndirectPointer ].
			[148]	-> [ ^ self lowcodePrimitivePerformCallIndirectStructure ].
			[149]	-> [ ^ self lowcodePrimitivePerformCallInt32 ].
			[150]	-> [ ^ self lowcodePrimitivePerformCallInt64 ].
			[151]	-> [ ^ self lowcodePrimitivePerformCallPointer ].
			[152]	-> [ ^ self lowcodePrimitivePerformCallStructure ].
			[153]	-> [ ^ self lowcodePrimitivePlaftormCode ].
			[154]	-> [ ^ self lowcodePrimitivePointerAddConstantOffset ].
			[155]	-> [ ^ self lowcodePrimitivePointerAddOffset32 ].
			[156]	-> [ ^ self lowcodePrimitivePointerAddOffset64 ].
			[157]	-> [ ^ self lowcodePrimitivePointerEqual ].
			[158]	-> [ ^ self lowcodePrimitivePointerNotEqual ].
			[159]	-> [ ^ self lowcodePrimitivePointerToInt32 ].
			[160]	-> [ ^ self lowcodePrimitivePointerToInt64 ].
			[161]	-> [ ^ self lowcodePrimitivePopFloat32 ].
			[162]	-> [ ^ self lowcodePrimitivePopFloat64 ].
			[163]	-> [ ^ self lowcodePrimitivePopInt32 ].
			[164]	-> [ ^ self lowcodePrimitivePopInt64 ].
			[165]	-> [ ^ self lowcodePrimitivePopPointer ].
			[166]	-> [ ^ self lowcodePrimitivePushConstantUInt32 ].
			[167]	-> [ ^ self lowcodePrimitivePushConstantUInt64 ].
			[168]	-> [ ^ self lowcodePrimitivePushNullPointer ].
			[169]	-> [ ^ self lowcodePrimitivePushOne32 ].
			[170]	-> [ ^ self lowcodePrimitivePushOne64 ].
			[171]	-> [ ^ self lowcodePrimitivePushOneFloat32 ].
			[172]	-> [ ^ self lowcodePrimitivePushOneFloat64 ].
			[173]	-> [ ^ self lowcodePrimitivePushPhysicalFloat32 ].
			[174]	-> [ ^ self lowcodePrimitivePushPhysicalFloat64 ].
			[175]	-> [ ^ self lowcodePrimitivePushPhysicalInt32 ].
			[176]	-> [ ^ self lowcodePrimitivePushPhysicalInt64 ].
			[177]	-> [ ^ self lowcodePrimitivePushPhysicalPointer ].
			[178]	-> [ ^ self lowcodePrimitivePushSessionIdentifier ].
			[179]	-> [ ^ self lowcodePrimitivePushZero32 ].
			[180]	-> [ ^ self lowcodePrimitivePushZero64 ].
			[181]	-> [ ^ self lowcodePrimitivePushZeroFloat32 ].
			[182]	-> [ ^ self lowcodePrimitivePushZeroFloat64 ].
			[183]	-> [ ^ self lowcodePrimitiveRem32 ].
			[184]	-> [ ^ self lowcodePrimitiveRem64 ].
			[185]	-> [ ^ self lowcodePrimitiveRightShift32 ].
			[186]	-> [ ^ self lowcodePrimitiveRightShift64 ].
		}
		otherwise: [ ^ self unaryInlinePrimitive4: prim ].
	

