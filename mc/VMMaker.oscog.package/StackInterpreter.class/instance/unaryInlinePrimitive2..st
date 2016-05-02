inline primitive dispatch generated code
unaryInlinePrimitive2: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[67]	-> [ ^ self lowcodePrimitiveRem64 ].
			[68]	-> [ ^ self lowcodePrimitiveRem32 ].
			[69]	-> [ ^ self lowcodePrimitivePushZeroFloat64 ].
			[70]	-> [ ^ self lowcodePrimitivePushZeroFloat32 ].
			[71]	-> [ ^ self lowcodePrimitivePushZero64 ].
			[72]	-> [ ^ self lowcodePrimitivePushZero32 ].
			[73]	-> [ ^ self lowcodePrimitivePushSessionIdentifier ].
			[74]	-> [ ^ self lowcodePrimitivePushPhysicalPointer ].
			[75]	-> [ ^ self lowcodePrimitivePushPhysicalInt64 ].
			[76]	-> [ ^ self lowcodePrimitivePushPhysicalInt32 ].
			[77]	-> [ ^ self lowcodePrimitivePushPhysicalFloat64 ].
			[78]	-> [ ^ self lowcodePrimitivePushPhysicalFloat32 ].
			[79]	-> [ ^ self lowcodePrimitivePushOneFloat64 ].
			[80]	-> [ ^ self lowcodePrimitivePushOneFloat32 ].
			[81]	-> [ ^ self lowcodePrimitivePushOne64 ].
			[82]	-> [ ^ self lowcodePrimitivePushOne32 ].
			[83]	-> [ ^ self lowcodePrimitivePushNullPointer ].
			[84]	-> [ ^ self lowcodePrimitivePushConstantUInt64 ].
			[85]	-> [ ^ self lowcodePrimitivePushConstantUInt32 ].
			[86]	-> [ ^ self lowcodePrimitivePopPointer ].
			[87]	-> [ ^ self lowcodePrimitivePopInt64 ].
			[88]	-> [ ^ self lowcodePrimitivePopInt32 ].
			[89]	-> [ ^ self lowcodePrimitivePopFloat64 ].
			[90]	-> [ ^ self lowcodePrimitivePopFloat32 ].
			[91]	-> [ ^ self lowcodePrimitivePointerToInt64 ].
			[92]	-> [ ^ self lowcodePrimitivePointerToInt32 ].
			[93]	-> [ ^ self lowcodePrimitivePointerNotEqual ].
			[94]	-> [ ^ self lowcodePrimitivePointerEqual ].
			[95]	-> [ ^ self lowcodePrimitivePointerAddOffset64 ].
			[96]	-> [ ^ self lowcodePrimitivePointerAddOffset32 ].
			[97]	-> [ ^ self lowcodePrimitivePlaftormCode ].
			[98]	-> [ ^ self lowcodePrimitivePerformCallStructure ].
			[99]	-> [ ^ self lowcodePrimitivePerformCallPointer ].
			[100]	-> [ ^ self lowcodePrimitivePerformCallInt64 ].
			[101]	-> [ ^ self lowcodePrimitivePerformCallInt32 ].
			[102]	-> [ ^ self lowcodePrimitivePerformCallIndirectStructure ].
			[103]	-> [ ^ self lowcodePrimitivePerformCallIndirectPointer ].
			[104]	-> [ ^ self lowcodePrimitivePerformCallIndirectInt64 ].
			[105]	-> [ ^ self lowcodePrimitivePerformCallIndirectInt32 ].
			[106]	-> [ ^ self lowcodePrimitivePerformCallIndirectFloat64 ].
			[107]	-> [ ^ self lowcodePrimitivePerformCallIndirectFloat32 ].
			[108]	-> [ ^ self lowcodePrimitivePerformCallFloat64 ].
			[109]	-> [ ^ self lowcodePrimitivePerformCallFloat32 ].
			[110]	-> [ ^ self lowcodePrimitiveOr64 ].
			[111]	-> [ ^ self lowcodePrimitiveOr32 ].
			[112]	-> [ ^ self lowcodePrimitiveNot64 ].
			[113]	-> [ ^ self lowcodePrimitiveNot32 ].
			[114]	-> [ ^ self lowcodePrimitiveNeg64 ].
			[115]	-> [ ^ self lowcodePrimitiveNeg32 ].
			[116]	-> [ ^ self lowcodePrimitiveMul64 ].
			[117]	-> [ ^ self lowcodePrimitiveMul32 ].
			[118]	-> [ ^ self lowcodePrimitiveMovePointerToPhysical ].
			[119]	-> [ ^ self lowcodePrimitiveMoveInt64ToPhysical ].
			[120]	-> [ ^ self lowcodePrimitiveMoveInt32ToPhysical ].
			[121]	-> [ ^ self lowcodePrimitiveMoveFloat64ToPhysical ].
			[122]	-> [ ^ self lowcodePrimitiveMoveFloat32ToPhysical ].
			[123]	-> [ ^ self lowcodePrimitiveMemcpyFixed ].
			[124]	-> [ ^ self lowcodePrimitiveMemcpy64 ].
			[125]	-> [ ^ self lowcodePrimitiveMemcpy32 ].
			[126]	-> [ ^ self lowcodePrimitiveMalloc64 ].
		}
		otherwise: [ ^ self unaryInlinePrimitive3: prim ].
	

