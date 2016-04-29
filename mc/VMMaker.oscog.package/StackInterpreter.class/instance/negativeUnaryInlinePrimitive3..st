inline primitive dispatch generated code
negativeUnaryInlinePrimitive3: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[120]	-> [ ^ self lowcodePrimitiveNeg64 ].
			[121]	-> [ ^ self lowcodePrimitiveNot32 ].
			[122]	-> [ ^ self lowcodePrimitiveNot64 ].
			[123]	-> [ ^ self lowcodePrimitiveOr32 ].
			[124]	-> [ ^ self lowcodePrimitiveOr64 ].
			[125]	-> [ ^ self lowcodePrimitivePerformCallFloat32 ].
			[126]	-> [ ^ self lowcodePrimitivePerformCallFloat64 ].
			[127]	-> [ ^ self lowcodePrimitivePerformCallIndirectFloat32 ].
			[128]	-> [ ^ self lowcodePrimitivePerformCallIndirectFloat64 ].
			[129]	-> [ ^ self lowcodePrimitivePerformCallIndirectInt32 ].
			[130]	-> [ ^ self lowcodePrimitivePerformCallIndirectInt64 ].
			[131]	-> [ ^ self lowcodePrimitivePerformCallIndirectPointer ].
			[132]	-> [ ^ self lowcodePrimitivePerformCallIndirectStructure ].
			[133]	-> [ ^ self lowcodePrimitivePerformCallInt32 ].
			[134]	-> [ ^ self lowcodePrimitivePerformCallInt64 ].
			[135]	-> [ ^ self lowcodePrimitivePerformCallPointer ].
			[136]	-> [ ^ self lowcodePrimitivePerformCallStructure ].
			[137]	-> [ ^ self lowcodePrimitivePlaftormCode ].
			[138]	-> [ ^ self lowcodePrimitivePointerAddOffset32 ].
			[139]	-> [ ^ self lowcodePrimitivePointerAddOffset64 ].
			[140]	-> [ ^ self lowcodePrimitivePointerEqual ].
			[141]	-> [ ^ self lowcodePrimitivePointerNotEqual ].
			[142]	-> [ ^ self lowcodePrimitivePointerToInt32 ].
			[143]	-> [ ^ self lowcodePrimitivePointerToInt64 ].
			[144]	-> [ ^ self lowcodePrimitivePopFloat32 ].
			[145]	-> [ ^ self lowcodePrimitivePopFloat64 ].
			[146]	-> [ ^ self lowcodePrimitivePopInt32 ].
			[147]	-> [ ^ self lowcodePrimitivePopInt64 ].
			[148]	-> [ ^ self lowcodePrimitivePopPointer ].
			[149]	-> [ ^ self lowcodePrimitivePushConstantUInt32 ].
			[150]	-> [ ^ self lowcodePrimitivePushConstantUInt64 ].
			[151]	-> [ ^ self lowcodePrimitivePushNullPointer ].
			[152]	-> [ ^ self lowcodePrimitivePushOne32 ].
			[153]	-> [ ^ self lowcodePrimitivePushOne64 ].
			[154]	-> [ ^ self lowcodePrimitivePushOneFloat32 ].
			[155]	-> [ ^ self lowcodePrimitivePushOneFloat64 ].
			[156]	-> [ ^ self lowcodePrimitivePushPhysicalFloat32 ].
			[157]	-> [ ^ self lowcodePrimitivePushPhysicalFloat64 ].
			[158]	-> [ ^ self lowcodePrimitivePushPhysicalInt32 ].
			[159]	-> [ ^ self lowcodePrimitivePushPhysicalInt64 ].
			[160]	-> [ ^ self lowcodePrimitivePushPhysicalPointer ].
			[161]	-> [ ^ self lowcodePrimitivePushSessionIdentifier ].
			[162]	-> [ ^ self lowcodePrimitivePushZero32 ].
			[163]	-> [ ^ self lowcodePrimitivePushZero64 ].
			[164]	-> [ ^ self lowcodePrimitivePushZeroFloat32 ].
			[165]	-> [ ^ self lowcodePrimitivePushZeroFloat64 ].
			[166]	-> [ ^ self lowcodePrimitiveRem32 ].
			[167]	-> [ ^ self lowcodePrimitiveRem64 ].
			[168]	-> [ ^ self lowcodePrimitiveRightShift32 ].
			[169]	-> [ ^ self lowcodePrimitiveRightShift64 ].
			[170]	-> [ ^ self lowcodePrimitiveSignExtend32From16 ].
			[171]	-> [ ^ self lowcodePrimitiveSignExtend32From8 ].
			[172]	-> [ ^ self lowcodePrimitiveSignExtend64From16 ].
			[173]	-> [ ^ self lowcodePrimitiveSignExtend64From32 ].
			[174]	-> [ ^ self lowcodePrimitiveSignExtend64From8 ].
			[175]	-> [ ^ self lowcodePrimitiveStoreFloat32ToMemory ].
			[176]	-> [ ^ self lowcodePrimitiveStoreFloat64ToMemory ].
			[177]	-> [ ^ self lowcodePrimitiveStoreInt16ToMemory ].
			[178]	-> [ ^ self lowcodePrimitiveStoreInt32ToMemory ].
			[179]	-> [ ^ self lowcodePrimitiveStoreInt64ToMemory ].
		}
		otherwise: [ ^ self negativeUnaryInlinePrimitive4: prim ].
	

