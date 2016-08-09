inline primitive generators dispatch generated code
genLowcodeUnaryInlinePrimitive3: prim
	<option: #LowcodeVM>	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[120]	-> [ ^ self genLowcodeMemcpyFixed ].
			[121]	-> [ ^ self genLowcodeMoveFloat32ToPhysical ].
			[122]	-> [ ^ self genLowcodeMoveFloat64ToPhysical ].
			[123]	-> [ ^ self genLowcodeMoveInt32ToPhysical ].
			[124]	-> [ ^ self genLowcodeMoveInt64ToPhysical ].
			[125]	-> [ ^ self genLowcodeMovePointerToPhysical ].
			[126]	-> [ ^ self genLowcodeMul32 ].
			[127]	-> [ ^ self genLowcodeMul64 ].
			[128]	-> [ ^ self genLowcodeNeg32 ].
			[129]	-> [ ^ self genLowcodeNeg64 ].
			[130]	-> [ ^ self genLowcodeNot32 ].
			[131]	-> [ ^ self genLowcodeNot64 ].
			[132]	-> [ ^ self genLowcodeOr32 ].
			[133]	-> [ ^ self genLowcodeOr64 ].
			[134]	-> [ ^ self genLowcodePerformCallFloat32 ].
			[135]	-> [ ^ self genLowcodePerformCallFloat64 ].
			[136]	-> [ ^ self genLowcodePerformCallIndirectFloat32 ].
			[137]	-> [ ^ self genLowcodePerformCallIndirectFloat64 ].
			[138]	-> [ ^ self genLowcodePerformCallIndirectInt32 ].
			[139]	-> [ ^ self genLowcodePerformCallIndirectInt64 ].
			[140]	-> [ ^ self genLowcodePerformCallIndirectPointer ].
			[141]	-> [ ^ self genLowcodePerformCallIndirectStructure ].
			[142]	-> [ ^ self genLowcodePerformCallInt32 ].
			[143]	-> [ ^ self genLowcodePerformCallInt64 ].
			[144]	-> [ ^ self genLowcodePerformCallPointer ].
			[145]	-> [ ^ self genLowcodePerformCallStructure ].
			[146]	-> [ ^ self genLowcodePlaftormCode ].
			[147]	-> [ ^ self genLowcodePointerAddConstantOffset ].
			[148]	-> [ ^ self genLowcodePointerAddOffset32 ].
			[149]	-> [ ^ self genLowcodePointerAddOffset64 ].
			[150]	-> [ ^ self genLowcodePointerEqual ].
			[151]	-> [ ^ self genLowcodePointerNotEqual ].
			[152]	-> [ ^ self genLowcodePointerToInt32 ].
			[153]	-> [ ^ self genLowcodePointerToInt64 ].
			[154]	-> [ ^ self genLowcodePopFloat32 ].
			[155]	-> [ ^ self genLowcodePopFloat64 ].
			[156]	-> [ ^ self genLowcodePopInt32 ].
			[157]	-> [ ^ self genLowcodePopInt64 ].
			[158]	-> [ ^ self genLowcodePopPointer ].
			[159]	-> [ ^ self genLowcodePushConstantUInt32 ].
			[160]	-> [ ^ self genLowcodePushConstantUInt64 ].
			[161]	-> [ ^ self genLowcodePushNullPointer ].
			[162]	-> [ ^ self genLowcodePushOne32 ].
			[163]	-> [ ^ self genLowcodePushOne64 ].
			[164]	-> [ ^ self genLowcodePushOneFloat32 ].
			[165]	-> [ ^ self genLowcodePushOneFloat64 ].
			[166]	-> [ ^ self genLowcodePushPhysicalFloat32 ].
			[167]	-> [ ^ self genLowcodePushPhysicalFloat64 ].
			[168]	-> [ ^ self genLowcodePushPhysicalInt32 ].
			[169]	-> [ ^ self genLowcodePushPhysicalInt64 ].
			[170]	-> [ ^ self genLowcodePushPhysicalPointer ].
			[171]	-> [ ^ self genLowcodePushSessionIdentifier ].
			[172]	-> [ ^ self genLowcodePushZero32 ].
			[173]	-> [ ^ self genLowcodePushZero64 ].
			[174]	-> [ ^ self genLowcodePushZeroFloat32 ].
			[175]	-> [ ^ self genLowcodePushZeroFloat64 ].
			[176]	-> [ ^ self genLowcodeRem32 ].
			[177]	-> [ ^ self genLowcodeRem64 ].
			[178]	-> [ ^ self genLowcodeRightShift32 ].
			[179]	-> [ ^ self genLowcodeRightShift64 ].
		}
		otherwise: [ ^ self genLowcodeUnaryInlinePrimitive4: prim ].
	^ 0

