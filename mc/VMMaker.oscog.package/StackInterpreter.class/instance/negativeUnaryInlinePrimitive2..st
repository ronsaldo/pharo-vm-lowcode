inline primitive dispatch generated code
negativeUnaryInlinePrimitive2: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[60]	-> [ ^ self lowcodePrimitiveFree ].
			[61]	-> [ ^ self lowcodePrimitiveInt32Equal ].
			[62]	-> [ ^ self lowcodePrimitiveInt32Great ].
			[63]	-> [ ^ self lowcodePrimitiveInt32GreatEqual ].
			[64]	-> [ ^ self lowcodePrimitiveInt32Less ].
			[65]	-> [ ^ self lowcodePrimitiveInt32LessEqual ].
			[66]	-> [ ^ self lowcodePrimitiveInt32NotEqual ].
			[67]	-> [ ^ self lowcodePrimitiveInt32ToFloat32 ].
			[68]	-> [ ^ self lowcodePrimitiveInt32ToFloat64 ].
			[69]	-> [ ^ self lowcodePrimitiveInt32ToPointer ].
			[70]	-> [ ^ self lowcodePrimitiveInt64Equal ].
			[71]	-> [ ^ self lowcodePrimitiveInt64Great ].
			[72]	-> [ ^ self lowcodePrimitiveInt64GreatEqual ].
			[73]	-> [ ^ self lowcodePrimitiveInt64Less ].
			[74]	-> [ ^ self lowcodePrimitiveInt64LessEqual ].
			[75]	-> [ ^ self lowcodePrimitiveInt64NotEqual ].
			[76]	-> [ ^ self lowcodePrimitiveInt64ToFloat32 ].
			[77]	-> [ ^ self lowcodePrimitiveInt64ToFloat64 ].
			[78]	-> [ ^ self lowcodePrimitiveInt64ToPointer ].
			[79]	-> [ ^ self lowcodePrimitiveLeftShift32 ].
			[80]	-> [ ^ self lowcodePrimitiveLeftShift64 ].
			[81]	-> [ ^ self lowcodePrimitiveLoadFloat32FromMemory ].
			[82]	-> [ ^ self lowcodePrimitiveLoadFloat64FromMemory ].
			[83]	-> [ ^ self lowcodePrimitiveLoadInt16FromMemory ].
			[84]	-> [ ^ self lowcodePrimitiveLoadInt32FromMemory ].
			[85]	-> [ ^ self lowcodePrimitiveLoadInt64FromMemory ].
			[86]	-> [ ^ self lowcodePrimitiveLoadInt8FromMemory ].
			[87]	-> [ ^ self lowcodePrimitiveLoadLocalAddress ].
			[88]	-> [ ^ self lowcodePrimitiveLoadLocalFloat32 ].
			[89]	-> [ ^ self lowcodePrimitiveLoadLocalFloat64 ].
			[90]	-> [ ^ self lowcodePrimitiveLoadLocalInt16 ].
			[91]	-> [ ^ self lowcodePrimitiveLoadLocalInt32 ].
			[92]	-> [ ^ self lowcodePrimitiveLoadLocalInt64 ].
			[93]	-> [ ^ self lowcodePrimitiveLoadLocalInt8 ].
			[94]	-> [ ^ self lowcodePrimitiveLoadLocalPointer ].
			[95]	-> [ ^ self lowcodePrimitiveLoadLocalUInt16 ].
			[96]	-> [ ^ self lowcodePrimitiveLoadLocalUInt32 ].
			[97]	-> [ ^ self lowcodePrimitiveLoadLocalUInt64 ].
			[98]	-> [ ^ self lowcodePrimitiveLoadLocalUInt8 ].
			[99]	-> [ ^ self lowcodePrimitiveLoadPointerFromMemory ].
			[100]	-> [ ^ self lowcodePrimitiveLoadUInt16FromMemory ].
			[101]	-> [ ^ self lowcodePrimitiveLoadUInt32FromMemory ].
			[102]	-> [ ^ self lowcodePrimitiveLoadUInt64FromMemory ].
			[103]	-> [ ^ self lowcodePrimitiveLoadUInt8FromMemory ].
			[104]	-> [ ^ self lowcodePrimitiveLocalFrameSize ].
			[105]	-> [ ^ self lowcodePrimitiveLockRegisters ].
			[106]	-> [ ^ self lowcodePrimitiveLockVM ].
			[107]	-> [ ^ self lowcodePrimitiveMalloc32 ].
			[108]	-> [ ^ self lowcodePrimitiveMalloc64 ].
			[109]	-> [ ^ self lowcodePrimitiveMemcpy32 ].
			[110]	-> [ ^ self lowcodePrimitiveMemcpy64 ].
			[111]	-> [ ^ self lowcodePrimitiveMemcpyFixed ].
			[112]	-> [ ^ self lowcodePrimitiveMoveFloat32ToPhysical ].
			[113]	-> [ ^ self lowcodePrimitiveMoveFloat64ToPhysical ].
			[114]	-> [ ^ self lowcodePrimitiveMoveInt32ToPhysical ].
			[115]	-> [ ^ self lowcodePrimitiveMoveInt64ToPhysical ].
			[116]	-> [ ^ self lowcodePrimitiveMovePointerToPhysical ].
			[117]	-> [ ^ self lowcodePrimitiveMul32 ].
			[118]	-> [ ^ self lowcodePrimitiveMul64 ].
			[119]	-> [ ^ self lowcodePrimitiveNeg32 ].
		}
		otherwise: [ ^ self negativeUnaryInlinePrimitive3: prim ].
	

