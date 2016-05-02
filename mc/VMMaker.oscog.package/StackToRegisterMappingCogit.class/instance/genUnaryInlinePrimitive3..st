inline primitive generators dispatch generated code
genUnaryInlinePrimitive3: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[127]	-> [ ^ self genLowcodeMalloc32 ].
			[128]	-> [ ^ self genLowcodeLockVM ].
			[129]	-> [ ^ self genLowcodeLockRegisters ].
			[130]	-> [ ^ self genLowcodeLocalFrameSize ].
			[131]	-> [ ^ self genLowcodeLoadUInt8FromMemory ].
			[132]	-> [ ^ self genLowcodeLoadUInt64FromMemory ].
			[133]	-> [ ^ self genLowcodeLoadUInt32FromMemory ].
			[134]	-> [ ^ self genLowcodeLoadUInt16FromMemory ].
			[135]	-> [ ^ self genLowcodeLoadPointerFromMemory ].
			[136]	-> [ ^ self genLowcodeLoadLocalUInt8 ].
			[137]	-> [ ^ self genLowcodeLoadLocalUInt64 ].
			[138]	-> [ ^ self genLowcodeLoadLocalUInt32 ].
			[139]	-> [ ^ self genLowcodeLoadLocalUInt16 ].
			[140]	-> [ ^ self genLowcodeLoadLocalPointer ].
			[141]	-> [ ^ self genLowcodeLoadLocalInt8 ].
			[142]	-> [ ^ self genLowcodeLoadLocalInt64 ].
			[143]	-> [ ^ self genLowcodeLoadLocalInt32 ].
			[144]	-> [ ^ self genLowcodeLoadLocalInt16 ].
			[145]	-> [ ^ self genLowcodeLoadLocalFloat64 ].
			[146]	-> [ ^ self genLowcodeLoadLocalFloat32 ].
			[147]	-> [ ^ self genLowcodeLoadLocalAddress ].
			[148]	-> [ ^ self genLowcodeLoadInt8FromMemory ].
			[149]	-> [ ^ self genLowcodeLoadInt64FromMemory ].
			[150]	-> [ ^ self genLowcodeLoadInt32FromMemory ].
			[151]	-> [ ^ self genLowcodeLoadInt16FromMemory ].
			[152]	-> [ ^ self genLowcodeLoadFloat64FromMemory ].
			[153]	-> [ ^ self genLowcodeLoadFloat32FromMemory ].
			[154]	-> [ ^ self genLowcodeLeftShift64 ].
			[155]	-> [ ^ self genLowcodeLeftShift32 ].
			[156]	-> [ ^ self genLowcodeInt64ToPointer ].
			[157]	-> [ ^ self genLowcodeInt64ToFloat64 ].
			[158]	-> [ ^ self genLowcodeInt64ToFloat32 ].
			[159]	-> [ ^ self genLowcodeInt64NotEqual ].
			[160]	-> [ ^ self genLowcodeInt64LessEqual ].
			[161]	-> [ ^ self genLowcodeInt64Less ].
			[162]	-> [ ^ self genLowcodeInt64GreatEqual ].
			[163]	-> [ ^ self genLowcodeInt64Great ].
			[164]	-> [ ^ self genLowcodeInt64Equal ].
			[165]	-> [ ^ self genLowcodeInt32ToPointer ].
			[166]	-> [ ^ self genLowcodeInt32ToFloat64 ].
			[167]	-> [ ^ self genLowcodeInt32ToFloat32 ].
			[168]	-> [ ^ self genLowcodeInt32NotEqual ].
			[169]	-> [ ^ self genLowcodeInt32LessEqual ].
			[170]	-> [ ^ self genLowcodeInt32Less ].
			[171]	-> [ ^ self genLowcodeInt32GreatEqual ].
			[172]	-> [ ^ self genLowcodeInt32Great ].
			[173]	-> [ ^ self genLowcodeInt32Equal ].
			[174]	-> [ ^ self genLowcodeFree ].
			[175]	-> [ ^ self genLowcodeFloat64ToUInt64 ].
			[176]	-> [ ^ self genLowcodeFloat64ToUInt32 ].
			[177]	-> [ ^ self genLowcodeFloat64ToInt64 ].
			[178]	-> [ ^ self genLowcodeFloat64ToInt32 ].
			[179]	-> [ ^ self genLowcodeFloat64ToFloat32 ].
			[180]	-> [ ^ self genLowcodeFloat64Sub ].
			[181]	-> [ ^ self genLowcodeFloat64NotEqual ].
			[182]	-> [ ^ self genLowcodeFloat64Mul ].
			[183]	-> [ ^ self genLowcodeFloat64LessEqual ].
			[184]	-> [ ^ self genLowcodeFloat64Less ].
			[185]	-> [ ^ self genLowcodeFloat64GreatEqual ].
			[186]	-> [ ^ self genLowcodeFloat64Great ].
		}
		otherwise: [ ^ self genUnaryInlinePrimitive4: prim ].
	^ 0

