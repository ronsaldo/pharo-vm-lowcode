inline primitive dispatch generated code
lowcodeUnaryInlinePrimitive3: prim
	<option: #LowcodeVM>	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[120]	-> [ ^ self lowcodePrimitiveMemcpyFixed ].
			[121]	-> [ ^ self lowcodePrimitiveMoveFloat32ToPhysical ].
			[122]	-> [ ^ self lowcodePrimitiveMoveFloat64ToPhysical ].
			[123]	-> [ ^ self lowcodePrimitiveMoveInt32ToPhysical ].
			[124]	-> [ ^ self lowcodePrimitiveMoveInt64ToPhysical ].
			[125]	-> [ ^ self lowcodePrimitiveMovePointerToPhysical ].
			[126]	-> [ ^ self lowcodePrimitiveMul32 ].
			[127]	-> [ ^ self lowcodePrimitiveMul64 ].
			[128]	-> [ ^ self lowcodePrimitiveNeg32 ].
			[129]	-> [ ^ self lowcodePrimitiveNeg64 ].
			[130]	-> [ ^ self lowcodePrimitiveNot32 ].
			[131]	-> [ ^ self lowcodePrimitiveNot64 ].
			[132]	-> [ ^ self lowcodePrimitiveOr32 ].
			[133]	-> [ ^ self lowcodePrimitiveOr64 ].
			[134]	-> [ ^ self lowcodePrimitivePerformCallFloat32 ].
			[135]	-> [ ^ self lowcodePrimitivePerformCallFloat64 ].
			[136]	-> [ ^ self lowcodePrimitivePerformCallIndirectFloat32 ].
			[137]	-> [ ^ self lowcodePrimitivePerformCallIndirectFloat64 ].
			[138]	-> [ ^ self lowcodePrimitivePerformCallIndirectInt32 ].
			[139]	-> [ ^ self lowcodePrimitivePerformCallIndirectInt64 ].
			[140]	-> [ ^ self lowcodePrimitivePerformCallIndirectPointer ].
			[141]	-> [ ^ self lowcodePrimitivePerformCallIndirectStructure ].
			[142]	-> [ ^ self lowcodePrimitivePerformCallInt32 ].
			[143]	-> [ ^ self lowcodePrimitivePerformCallInt64 ].
			[144]	-> [ ^ self lowcodePrimitivePerformCallPointer ].
			[145]	-> [ ^ self lowcodePrimitivePerformCallStructure ].
			[146]	-> [ ^ self lowcodePrimitivePlaftormCode ].
			[147]	-> [ ^ self lowcodePrimitivePointerAddConstantOffset ].
			[148]	-> [ ^ self lowcodePrimitivePointerAddOffset32 ].
			[149]	-> [ ^ self lowcodePrimitivePointerAddOffset64 ].
			[150]	-> [ ^ self lowcodePrimitivePointerEqual ].
			[151]	-> [ ^ self lowcodePrimitivePointerNotEqual ].
			[152]	-> [ ^ self lowcodePrimitivePointerToInt32 ].
			[153]	-> [ ^ self lowcodePrimitivePointerToInt64 ].
			[154]	-> [ ^ self lowcodePrimitivePopFloat32 ].
			[155]	-> [ ^ self lowcodePrimitivePopFloat64 ].
			[156]	-> [ ^ self lowcodePrimitivePopInt32 ].
			[157]	-> [ ^ self lowcodePrimitivePopInt64 ].
			[158]	-> [ ^ self lowcodePrimitivePopPointer ].
			[159]	-> [ ^ self lowcodePrimitivePushConstantUInt32 ].
			[160]	-> [ ^ self lowcodePrimitivePushConstantUInt64 ].
			[161]	-> [ ^ self lowcodePrimitivePushNullPointer ].
			[162]	-> [ ^ self lowcodePrimitivePushOne32 ].
			[163]	-> [ ^ self lowcodePrimitivePushOne64 ].
			[164]	-> [ ^ self lowcodePrimitivePushOneFloat32 ].
			[165]	-> [ ^ self lowcodePrimitivePushOneFloat64 ].
			[166]	-> [ ^ self lowcodePrimitivePushPhysicalFloat32 ].
			[167]	-> [ ^ self lowcodePrimitivePushPhysicalFloat64 ].
			[168]	-> [ ^ self lowcodePrimitivePushPhysicalInt32 ].
			[169]	-> [ ^ self lowcodePrimitivePushPhysicalInt64 ].
			[170]	-> [ ^ self lowcodePrimitivePushPhysicalPointer ].
			[171]	-> [ ^ self lowcodePrimitivePushSessionIdentifier ].
			[172]	-> [ ^ self lowcodePrimitivePushZero32 ].
			[173]	-> [ ^ self lowcodePrimitivePushZero64 ].
			[174]	-> [ ^ self lowcodePrimitivePushZeroFloat32 ].
			[175]	-> [ ^ self lowcodePrimitivePushZeroFloat64 ].
			[176]	-> [ ^ self lowcodePrimitiveRem32 ].
			[177]	-> [ ^ self lowcodePrimitiveRem64 ].
			[178]	-> [ ^ self lowcodePrimitiveRightShift32 ].
			[179]	-> [ ^ self lowcodePrimitiveRightShift64 ].
		}
		otherwise: [ ^ self lowcodeUnaryInlinePrimitive4: prim ].
	

