inline primitive generators dispatch generated code
genUnaryInlinePrimitive3: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[127]	-> [ ^ self genLowcodeMemcpyFixed ].
			[128]	-> [ ^ self genLowcodeMoveFloat32ToPhysical ].
			[129]	-> [ ^ self genLowcodeMoveFloat64ToPhysical ].
			[130]	-> [ ^ self genLowcodeMoveInt32ToPhysical ].
			[131]	-> [ ^ self genLowcodeMoveInt64ToPhysical ].
			[132]	-> [ ^ self genLowcodeMovePointerToPhysical ].
			[133]	-> [ ^ self genLowcodeMul32 ].
			[134]	-> [ ^ self genLowcodeMul64 ].
			[135]	-> [ ^ self genLowcodeNeg32 ].
			[136]	-> [ ^ self genLowcodeNeg64 ].
			[137]	-> [ ^ self genLowcodeNot32 ].
			[138]	-> [ ^ self genLowcodeNot64 ].
			[139]	-> [ ^ self genLowcodeOr32 ].
			[140]	-> [ ^ self genLowcodeOr64 ].
			[141]	-> [ ^ self genLowcodePerformCallFloat32 ].
			[142]	-> [ ^ self genLowcodePerformCallFloat64 ].
			[143]	-> [ ^ self genLowcodePerformCallIndirectFloat32 ].
			[144]	-> [ ^ self genLowcodePerformCallIndirectFloat64 ].
			[145]	-> [ ^ self genLowcodePerformCallIndirectInt32 ].
			[146]	-> [ ^ self genLowcodePerformCallIndirectInt64 ].
			[147]	-> [ ^ self genLowcodePerformCallIndirectPointer ].
			[148]	-> [ ^ self genLowcodePerformCallIndirectStructure ].
			[149]	-> [ ^ self genLowcodePerformCallInt32 ].
			[150]	-> [ ^ self genLowcodePerformCallInt64 ].
			[151]	-> [ ^ self genLowcodePerformCallPointer ].
			[152]	-> [ ^ self genLowcodePerformCallStructure ].
			[153]	-> [ ^ self genLowcodePlaftormCode ].
			[154]	-> [ ^ self genLowcodePointerAddConstantOffset ].
			[155]	-> [ ^ self genLowcodePointerAddOffset32 ].
			[156]	-> [ ^ self genLowcodePointerAddOffset64 ].
			[157]	-> [ ^ self genLowcodePointerEqual ].
			[158]	-> [ ^ self genLowcodePointerNotEqual ].
			[159]	-> [ ^ self genLowcodePointerToInt32 ].
			[160]	-> [ ^ self genLowcodePointerToInt64 ].
			[161]	-> [ ^ self genLowcodePopFloat32 ].
			[162]	-> [ ^ self genLowcodePopFloat64 ].
			[163]	-> [ ^ self genLowcodePopInt32 ].
			[164]	-> [ ^ self genLowcodePopInt64 ].
			[165]	-> [ ^ self genLowcodePopPointer ].
			[166]	-> [ ^ self genLowcodePushConstantUInt32 ].
			[167]	-> [ ^ self genLowcodePushConstantUInt64 ].
			[168]	-> [ ^ self genLowcodePushNullPointer ].
			[169]	-> [ ^ self genLowcodePushOne32 ].
			[170]	-> [ ^ self genLowcodePushOne64 ].
			[171]	-> [ ^ self genLowcodePushOneFloat32 ].
			[172]	-> [ ^ self genLowcodePushOneFloat64 ].
			[173]	-> [ ^ self genLowcodePushPhysicalFloat32 ].
			[174]	-> [ ^ self genLowcodePushPhysicalFloat64 ].
			[175]	-> [ ^ self genLowcodePushPhysicalInt32 ].
			[176]	-> [ ^ self genLowcodePushPhysicalInt64 ].
			[177]	-> [ ^ self genLowcodePushPhysicalPointer ].
			[178]	-> [ ^ self genLowcodePushSessionIdentifier ].
			[179]	-> [ ^ self genLowcodePushZero32 ].
			[180]	-> [ ^ self genLowcodePushZero64 ].
			[181]	-> [ ^ self genLowcodePushZeroFloat32 ].
			[182]	-> [ ^ self genLowcodePushZeroFloat64 ].
			[183]	-> [ ^ self genLowcodeRem32 ].
			[184]	-> [ ^ self genLowcodeRem64 ].
			[185]	-> [ ^ self genLowcodeRightShift32 ].
			[186]	-> [ ^ self genLowcodeRightShift64 ].
		}
		otherwise: [ ^ self genUnaryInlinePrimitive4: prim ].
	^ 0

