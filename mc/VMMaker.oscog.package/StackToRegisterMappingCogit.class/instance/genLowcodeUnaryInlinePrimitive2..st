inline primitive generators dispatch generated code
genLowcodeUnaryInlinePrimitive2: prim
	<option: #LowcodeVM>	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[60]	-> [ ^ self genLowcodeFloat64ToInt32 ].
			[61]	-> [ ^ self genLowcodeFloat64ToInt64 ].
			[62]	-> [ ^ self genLowcodeFloat64ToUInt32 ].
			[63]	-> [ ^ self genLowcodeFloat64ToUInt64 ].
			[64]	-> [ ^ self genLowcodeFree ].
			[65]	-> [ ^ self genLowcodeInstantiateIndexable32Oop ].
			[66]	-> [ ^ self genLowcodeInstantiateIndexableOop ].
			[67]	-> [ ^ self genLowcodeInstantiateOop ].
			[68]	-> [ ^ self genLowcodeInt32Equal ].
			[69]	-> [ ^ self genLowcodeInt32Great ].
			[70]	-> [ ^ self genLowcodeInt32GreatEqual ].
			[71]	-> [ ^ self genLowcodeInt32Less ].
			[72]	-> [ ^ self genLowcodeInt32LessEqual ].
			[73]	-> [ ^ self genLowcodeInt32NotEqual ].
			[74]	-> [ ^ self genLowcodeInt32ToFloat32 ].
			[75]	-> [ ^ self genLowcodeInt32ToFloat64 ].
			[76]	-> [ ^ self genLowcodeInt32ToPointer ].
			[77]	-> [ ^ self genLowcodeInt64Equal ].
			[78]	-> [ ^ self genLowcodeInt64Great ].
			[79]	-> [ ^ self genLowcodeInt64GreatEqual ].
			[80]	-> [ ^ self genLowcodeInt64Less ].
			[81]	-> [ ^ self genLowcodeInt64LessEqual ].
			[82]	-> [ ^ self genLowcodeInt64NotEqual ].
			[83]	-> [ ^ self genLowcodeInt64ToFloat32 ].
			[84]	-> [ ^ self genLowcodeInt64ToFloat64 ].
			[85]	-> [ ^ self genLowcodeInt64ToPointer ].
			[86]	-> [ ^ self genLowcodeLeftShift32 ].
			[87]	-> [ ^ self genLowcodeLeftShift64 ].
			[88]	-> [ ^ self genLowcodeLoadFloat32FromMemory ].
			[89]	-> [ ^ self genLowcodeLoadFloat64FromMemory ].
			[90]	-> [ ^ self genLowcodeLoadInt16FromMemory ].
			[91]	-> [ ^ self genLowcodeLoadInt32FromMemory ].
			[92]	-> [ ^ self genLowcodeLoadInt64FromMemory ].
			[93]	-> [ ^ self genLowcodeLoadInt8FromMemory ].
			[94]	-> [ ^ self genLowcodeLoadLocalAddress ].
			[95]	-> [ ^ self genLowcodeLoadLocalFloat32 ].
			[96]	-> [ ^ self genLowcodeLoadLocalFloat64 ].
			[97]	-> [ ^ self genLowcodeLoadLocalInt16 ].
			[98]	-> [ ^ self genLowcodeLoadLocalInt32 ].
			[99]	-> [ ^ self genLowcodeLoadLocalInt64 ].
			[100]	-> [ ^ self genLowcodeLoadLocalInt8 ].
			[101]	-> [ ^ self genLowcodeLoadLocalPointer ].
			[102]	-> [ ^ self genLowcodeLoadLocalUInt16 ].
			[103]	-> [ ^ self genLowcodeLoadLocalUInt32 ].
			[104]	-> [ ^ self genLowcodeLoadLocalUInt64 ].
			[105]	-> [ ^ self genLowcodeLoadLocalUInt8 ].
			[106]	-> [ ^ self genLowcodeLoadObjectAt ].
			[107]	-> [ ^ self genLowcodeLoadObjectField ].
			[108]	-> [ ^ self genLowcodeLoadPointerFromMemory ].
			[109]	-> [ ^ self genLowcodeLoadUInt16FromMemory ].
			[110]	-> [ ^ self genLowcodeLoadUInt32FromMemory ].
			[111]	-> [ ^ self genLowcodeLoadUInt64FromMemory ].
			[112]	-> [ ^ self genLowcodeLoadUInt8FromMemory ].
			[113]	-> [ ^ self genLowcodeLocalFrameSize ].
			[114]	-> [ ^ self genLowcodeLockRegisters ].
			[115]	-> [ ^ self genLowcodeLockVM ].
			[116]	-> [ ^ self genLowcodeMalloc32 ].
			[117]	-> [ ^ self genLowcodeMalloc64 ].
			[118]	-> [ ^ self genLowcodeMemcpy32 ].
			[119]	-> [ ^ self genLowcodeMemcpy64 ].
		}
		otherwise: [ ^ self genLowcodeUnaryInlinePrimitive3: prim ].
	^ 0

