inline primitive dispatch generated code
unaryInlinePrimitive2: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[67]	-> [ ^ self lowcodePrimitiveFloat64ToInt32 ].
			[68]	-> [ ^ self lowcodePrimitiveFloat64ToInt64 ].
			[69]	-> [ ^ self lowcodePrimitiveFloat64ToUInt32 ].
			[70]	-> [ ^ self lowcodePrimitiveFloat64ToUInt64 ].
			[71]	-> [ ^ self lowcodePrimitiveFree ].
			[72]	-> [ ^ self lowcodePrimitiveInstantiateIndexable32Oop ].
			[73]	-> [ ^ self lowcodePrimitiveInstantiateIndexableOop ].
			[74]	-> [ ^ self lowcodePrimitiveInstantiateOop ].
			[75]	-> [ ^ self lowcodePrimitiveInt32Equal ].
			[76]	-> [ ^ self lowcodePrimitiveInt32Great ].
			[77]	-> [ ^ self lowcodePrimitiveInt32GreatEqual ].
			[78]	-> [ ^ self lowcodePrimitiveInt32Less ].
			[79]	-> [ ^ self lowcodePrimitiveInt32LessEqual ].
			[80]	-> [ ^ self lowcodePrimitiveInt32NotEqual ].
			[81]	-> [ ^ self lowcodePrimitiveInt32ToFloat32 ].
			[82]	-> [ ^ self lowcodePrimitiveInt32ToFloat64 ].
			[83]	-> [ ^ self lowcodePrimitiveInt32ToPointer ].
			[84]	-> [ ^ self lowcodePrimitiveInt64Equal ].
			[85]	-> [ ^ self lowcodePrimitiveInt64Great ].
			[86]	-> [ ^ self lowcodePrimitiveInt64GreatEqual ].
			[87]	-> [ ^ self lowcodePrimitiveInt64Less ].
			[88]	-> [ ^ self lowcodePrimitiveInt64LessEqual ].
			[89]	-> [ ^ self lowcodePrimitiveInt64NotEqual ].
			[90]	-> [ ^ self lowcodePrimitiveInt64ToFloat32 ].
			[91]	-> [ ^ self lowcodePrimitiveInt64ToFloat64 ].
			[92]	-> [ ^ self lowcodePrimitiveInt64ToPointer ].
			[93]	-> [ ^ self lowcodePrimitiveLeftShift32 ].
			[94]	-> [ ^ self lowcodePrimitiveLeftShift64 ].
			[95]	-> [ ^ self lowcodePrimitiveLoadFloat32FromMemory ].
			[96]	-> [ ^ self lowcodePrimitiveLoadFloat64FromMemory ].
			[97]	-> [ ^ self lowcodePrimitiveLoadInt16FromMemory ].
			[98]	-> [ ^ self lowcodePrimitiveLoadInt32FromMemory ].
			[99]	-> [ ^ self lowcodePrimitiveLoadInt64FromMemory ].
			[100]	-> [ ^ self lowcodePrimitiveLoadInt8FromMemory ].
			[101]	-> [ ^ self lowcodePrimitiveLoadLocalAddress ].
			[102]	-> [ ^ self lowcodePrimitiveLoadLocalFloat32 ].
			[103]	-> [ ^ self lowcodePrimitiveLoadLocalFloat64 ].
			[104]	-> [ ^ self lowcodePrimitiveLoadLocalInt16 ].
			[105]	-> [ ^ self lowcodePrimitiveLoadLocalInt32 ].
			[106]	-> [ ^ self lowcodePrimitiveLoadLocalInt64 ].
			[107]	-> [ ^ self lowcodePrimitiveLoadLocalInt8 ].
			[108]	-> [ ^ self lowcodePrimitiveLoadLocalPointer ].
			[109]	-> [ ^ self lowcodePrimitiveLoadLocalUInt16 ].
			[110]	-> [ ^ self lowcodePrimitiveLoadLocalUInt32 ].
			[111]	-> [ ^ self lowcodePrimitiveLoadLocalUInt64 ].
			[112]	-> [ ^ self lowcodePrimitiveLoadLocalUInt8 ].
			[113]	-> [ ^ self lowcodePrimitiveLoadObjectAt ].
			[114]	-> [ ^ self lowcodePrimitiveLoadObjectField ].
			[115]	-> [ ^ self lowcodePrimitiveLoadPointerFromMemory ].
			[116]	-> [ ^ self lowcodePrimitiveLoadUInt16FromMemory ].
			[117]	-> [ ^ self lowcodePrimitiveLoadUInt32FromMemory ].
			[118]	-> [ ^ self lowcodePrimitiveLoadUInt64FromMemory ].
			[119]	-> [ ^ self lowcodePrimitiveLoadUInt8FromMemory ].
			[120]	-> [ ^ self lowcodePrimitiveLocalFrameSize ].
			[121]	-> [ ^ self lowcodePrimitiveLockRegisters ].
			[122]	-> [ ^ self lowcodePrimitiveLockVM ].
			[123]	-> [ ^ self lowcodePrimitiveMalloc32 ].
			[124]	-> [ ^ self lowcodePrimitiveMalloc64 ].
			[125]	-> [ ^ self lowcodePrimitiveMemcpy32 ].
			[126]	-> [ ^ self lowcodePrimitiveMemcpy64 ].
		}
		otherwise: [ ^ self unaryInlinePrimitive3: prim ].
	

