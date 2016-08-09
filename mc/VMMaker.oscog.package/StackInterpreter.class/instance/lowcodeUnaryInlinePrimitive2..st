inline primitive dispatch generated code
lowcodeUnaryInlinePrimitive2: prim
	<option: #LowcodeVM>	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[60]	-> [ ^ self lowcodePrimitiveFloat64ToInt32 ].
			[61]	-> [ ^ self lowcodePrimitiveFloat64ToInt64 ].
			[62]	-> [ ^ self lowcodePrimitiveFloat64ToUInt32 ].
			[63]	-> [ ^ self lowcodePrimitiveFloat64ToUInt64 ].
			[64]	-> [ ^ self lowcodePrimitiveFree ].
			[65]	-> [ ^ self lowcodePrimitiveInstantiateIndexable32Oop ].
			[66]	-> [ ^ self lowcodePrimitiveInstantiateIndexableOop ].
			[67]	-> [ ^ self lowcodePrimitiveInstantiateOop ].
			[68]	-> [ ^ self lowcodePrimitiveInt32Equal ].
			[69]	-> [ ^ self lowcodePrimitiveInt32Great ].
			[70]	-> [ ^ self lowcodePrimitiveInt32GreatEqual ].
			[71]	-> [ ^ self lowcodePrimitiveInt32Less ].
			[72]	-> [ ^ self lowcodePrimitiveInt32LessEqual ].
			[73]	-> [ ^ self lowcodePrimitiveInt32NotEqual ].
			[74]	-> [ ^ self lowcodePrimitiveInt32ToFloat32 ].
			[75]	-> [ ^ self lowcodePrimitiveInt32ToFloat64 ].
			[76]	-> [ ^ self lowcodePrimitiveInt32ToPointer ].
			[77]	-> [ ^ self lowcodePrimitiveInt64Equal ].
			[78]	-> [ ^ self lowcodePrimitiveInt64Great ].
			[79]	-> [ ^ self lowcodePrimitiveInt64GreatEqual ].
			[80]	-> [ ^ self lowcodePrimitiveInt64Less ].
			[81]	-> [ ^ self lowcodePrimitiveInt64LessEqual ].
			[82]	-> [ ^ self lowcodePrimitiveInt64NotEqual ].
			[83]	-> [ ^ self lowcodePrimitiveInt64ToFloat32 ].
			[84]	-> [ ^ self lowcodePrimitiveInt64ToFloat64 ].
			[85]	-> [ ^ self lowcodePrimitiveInt64ToPointer ].
			[86]	-> [ ^ self lowcodePrimitiveLeftShift32 ].
			[87]	-> [ ^ self lowcodePrimitiveLeftShift64 ].
			[88]	-> [ ^ self lowcodePrimitiveLoadFloat32FromMemory ].
			[89]	-> [ ^ self lowcodePrimitiveLoadFloat64FromMemory ].
			[90]	-> [ ^ self lowcodePrimitiveLoadInt16FromMemory ].
			[91]	-> [ ^ self lowcodePrimitiveLoadInt32FromMemory ].
			[92]	-> [ ^ self lowcodePrimitiveLoadInt64FromMemory ].
			[93]	-> [ ^ self lowcodePrimitiveLoadInt8FromMemory ].
			[94]	-> [ ^ self lowcodePrimitiveLoadLocalAddress ].
			[95]	-> [ ^ self lowcodePrimitiveLoadLocalFloat32 ].
			[96]	-> [ ^ self lowcodePrimitiveLoadLocalFloat64 ].
			[97]	-> [ ^ self lowcodePrimitiveLoadLocalInt16 ].
			[98]	-> [ ^ self lowcodePrimitiveLoadLocalInt32 ].
			[99]	-> [ ^ self lowcodePrimitiveLoadLocalInt64 ].
			[100]	-> [ ^ self lowcodePrimitiveLoadLocalInt8 ].
			[101]	-> [ ^ self lowcodePrimitiveLoadLocalPointer ].
			[102]	-> [ ^ self lowcodePrimitiveLoadLocalUInt16 ].
			[103]	-> [ ^ self lowcodePrimitiveLoadLocalUInt32 ].
			[104]	-> [ ^ self lowcodePrimitiveLoadLocalUInt64 ].
			[105]	-> [ ^ self lowcodePrimitiveLoadLocalUInt8 ].
			[106]	-> [ ^ self lowcodePrimitiveLoadObjectAt ].
			[107]	-> [ ^ self lowcodePrimitiveLoadObjectField ].
			[108]	-> [ ^ self lowcodePrimitiveLoadPointerFromMemory ].
			[109]	-> [ ^ self lowcodePrimitiveLoadUInt16FromMemory ].
			[110]	-> [ ^ self lowcodePrimitiveLoadUInt32FromMemory ].
			[111]	-> [ ^ self lowcodePrimitiveLoadUInt64FromMemory ].
			[112]	-> [ ^ self lowcodePrimitiveLoadUInt8FromMemory ].
			[113]	-> [ ^ self lowcodePrimitiveLocalFrameSize ].
			[114]	-> [ ^ self lowcodePrimitiveLockRegisters ].
			[115]	-> [ ^ self lowcodePrimitiveLockVM ].
			[116]	-> [ ^ self lowcodePrimitiveMalloc32 ].
			[117]	-> [ ^ self lowcodePrimitiveMalloc64 ].
			[118]	-> [ ^ self lowcodePrimitiveMemcpy32 ].
			[119]	-> [ ^ self lowcodePrimitiveMemcpy64 ].
		}
		otherwise: [ ^ self lowcodeUnaryInlinePrimitive3: prim ].
	

