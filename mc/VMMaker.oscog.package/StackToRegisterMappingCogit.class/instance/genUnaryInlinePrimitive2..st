inline primitive generators dispatch generated code
genUnaryInlinePrimitive2: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[67]	-> [ ^ self genLowcodeFloat64ToInt32 ].
			[68]	-> [ ^ self genLowcodeFloat64ToInt64 ].
			[69]	-> [ ^ self genLowcodeFloat64ToUInt32 ].
			[70]	-> [ ^ self genLowcodeFloat64ToUInt64 ].
			[71]	-> [ ^ self genLowcodeFree ].
			[72]	-> [ ^ self genLowcodeInstantiateIndexable32Oop ].
			[73]	-> [ ^ self genLowcodeInstantiateIndexableOop ].
			[74]	-> [ ^ self genLowcodeInstantiateOop ].
			[75]	-> [ ^ self genLowcodeInt32Equal ].
			[76]	-> [ ^ self genLowcodeInt32Great ].
			[77]	-> [ ^ self genLowcodeInt32GreatEqual ].
			[78]	-> [ ^ self genLowcodeInt32Less ].
			[79]	-> [ ^ self genLowcodeInt32LessEqual ].
			[80]	-> [ ^ self genLowcodeInt32NotEqual ].
			[81]	-> [ ^ self genLowcodeInt32ToFloat32 ].
			[82]	-> [ ^ self genLowcodeInt32ToFloat64 ].
			[83]	-> [ ^ self genLowcodeInt32ToPointer ].
			[84]	-> [ ^ self genLowcodeInt64Equal ].
			[85]	-> [ ^ self genLowcodeInt64Great ].
			[86]	-> [ ^ self genLowcodeInt64GreatEqual ].
			[87]	-> [ ^ self genLowcodeInt64Less ].
			[88]	-> [ ^ self genLowcodeInt64LessEqual ].
			[89]	-> [ ^ self genLowcodeInt64NotEqual ].
			[90]	-> [ ^ self genLowcodeInt64ToFloat32 ].
			[91]	-> [ ^ self genLowcodeInt64ToFloat64 ].
			[92]	-> [ ^ self genLowcodeInt64ToPointer ].
			[93]	-> [ ^ self genLowcodeLeftShift32 ].
			[94]	-> [ ^ self genLowcodeLeftShift64 ].
			[95]	-> [ ^ self genLowcodeLoadFloat32FromMemory ].
			[96]	-> [ ^ self genLowcodeLoadFloat64FromMemory ].
			[97]	-> [ ^ self genLowcodeLoadInt16FromMemory ].
			[98]	-> [ ^ self genLowcodeLoadInt32FromMemory ].
			[99]	-> [ ^ self genLowcodeLoadInt64FromMemory ].
			[100]	-> [ ^ self genLowcodeLoadInt8FromMemory ].
			[101]	-> [ ^ self genLowcodeLoadLocalAddress ].
			[102]	-> [ ^ self genLowcodeLoadLocalFloat32 ].
			[103]	-> [ ^ self genLowcodeLoadLocalFloat64 ].
			[104]	-> [ ^ self genLowcodeLoadLocalInt16 ].
			[105]	-> [ ^ self genLowcodeLoadLocalInt32 ].
			[106]	-> [ ^ self genLowcodeLoadLocalInt64 ].
			[107]	-> [ ^ self genLowcodeLoadLocalInt8 ].
			[108]	-> [ ^ self genLowcodeLoadLocalPointer ].
			[109]	-> [ ^ self genLowcodeLoadLocalUInt16 ].
			[110]	-> [ ^ self genLowcodeLoadLocalUInt32 ].
			[111]	-> [ ^ self genLowcodeLoadLocalUInt64 ].
			[112]	-> [ ^ self genLowcodeLoadLocalUInt8 ].
			[113]	-> [ ^ self genLowcodeLoadObjectAt ].
			[114]	-> [ ^ self genLowcodeLoadObjectField ].
			[115]	-> [ ^ self genLowcodeLoadPointerFromMemory ].
			[116]	-> [ ^ self genLowcodeLoadUInt16FromMemory ].
			[117]	-> [ ^ self genLowcodeLoadUInt32FromMemory ].
			[118]	-> [ ^ self genLowcodeLoadUInt64FromMemory ].
			[119]	-> [ ^ self genLowcodeLoadUInt8FromMemory ].
			[120]	-> [ ^ self genLowcodeLocalFrameSize ].
			[121]	-> [ ^ self genLowcodeLockRegisters ].
			[122]	-> [ ^ self genLowcodeLockVM ].
			[123]	-> [ ^ self genLowcodeMalloc32 ].
			[124]	-> [ ^ self genLowcodeMalloc64 ].
			[125]	-> [ ^ self genLowcodeMemcpy32 ].
			[126]	-> [ ^ self genLowcodeMemcpy64 ].
		}
		otherwise: [ ^ self genUnaryInlinePrimitive3: prim ].
	^ 0

