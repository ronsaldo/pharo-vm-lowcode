inline primitive generators dispatch generated code
genUnaryInlinePrimitive2: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[67]	-> [ ^ self genLowcodeRem64 ].
			[68]	-> [ ^ self genLowcodeRem32 ].
			[69]	-> [ ^ self genLowcodePushZeroFloat64 ].
			[70]	-> [ ^ self genLowcodePushZeroFloat32 ].
			[71]	-> [ ^ self genLowcodePushZero64 ].
			[72]	-> [ ^ self genLowcodePushZero32 ].
			[73]	-> [ ^ self genLowcodePushSessionIdentifier ].
			[74]	-> [ ^ self genLowcodePushPhysicalPointer ].
			[75]	-> [ ^ self genLowcodePushPhysicalInt64 ].
			[76]	-> [ ^ self genLowcodePushPhysicalInt32 ].
			[77]	-> [ ^ self genLowcodePushPhysicalFloat64 ].
			[78]	-> [ ^ self genLowcodePushPhysicalFloat32 ].
			[79]	-> [ ^ self genLowcodePushOneFloat64 ].
			[80]	-> [ ^ self genLowcodePushOneFloat32 ].
			[81]	-> [ ^ self genLowcodePushOne64 ].
			[82]	-> [ ^ self genLowcodePushOne32 ].
			[83]	-> [ ^ self genLowcodePushNullPointer ].
			[84]	-> [ ^ self genLowcodePushConstantUInt64 ].
			[85]	-> [ ^ self genLowcodePushConstantUInt32 ].
			[86]	-> [ ^ self genLowcodePopPointer ].
			[87]	-> [ ^ self genLowcodePopInt64 ].
			[88]	-> [ ^ self genLowcodePopInt32 ].
			[89]	-> [ ^ self genLowcodePopFloat64 ].
			[90]	-> [ ^ self genLowcodePopFloat32 ].
			[91]	-> [ ^ self genLowcodePointerToInt64 ].
			[92]	-> [ ^ self genLowcodePointerToInt32 ].
			[93]	-> [ ^ self genLowcodePointerNotEqual ].
			[94]	-> [ ^ self genLowcodePointerEqual ].
			[95]	-> [ ^ self genLowcodePointerAddOffset64 ].
			[96]	-> [ ^ self genLowcodePointerAddOffset32 ].
			[97]	-> [ ^ self genLowcodePlaftormCode ].
			[98]	-> [ ^ self genLowcodePerformCallStructure ].
			[99]	-> [ ^ self genLowcodePerformCallPointer ].
			[100]	-> [ ^ self genLowcodePerformCallInt64 ].
			[101]	-> [ ^ self genLowcodePerformCallInt32 ].
			[102]	-> [ ^ self genLowcodePerformCallIndirectStructure ].
			[103]	-> [ ^ self genLowcodePerformCallIndirectPointer ].
			[104]	-> [ ^ self genLowcodePerformCallIndirectInt64 ].
			[105]	-> [ ^ self genLowcodePerformCallIndirectInt32 ].
			[106]	-> [ ^ self genLowcodePerformCallIndirectFloat64 ].
			[107]	-> [ ^ self genLowcodePerformCallIndirectFloat32 ].
			[108]	-> [ ^ self genLowcodePerformCallFloat64 ].
			[109]	-> [ ^ self genLowcodePerformCallFloat32 ].
			[110]	-> [ ^ self genLowcodeOr64 ].
			[111]	-> [ ^ self genLowcodeOr32 ].
			[112]	-> [ ^ self genLowcodeNot64 ].
			[113]	-> [ ^ self genLowcodeNot32 ].
			[114]	-> [ ^ self genLowcodeNeg64 ].
			[115]	-> [ ^ self genLowcodeNeg32 ].
			[116]	-> [ ^ self genLowcodeMul64 ].
			[117]	-> [ ^ self genLowcodeMul32 ].
			[118]	-> [ ^ self genLowcodeMovePointerToPhysical ].
			[119]	-> [ ^ self genLowcodeMoveInt64ToPhysical ].
			[120]	-> [ ^ self genLowcodeMoveInt32ToPhysical ].
			[121]	-> [ ^ self genLowcodeMoveFloat64ToPhysical ].
			[122]	-> [ ^ self genLowcodeMoveFloat32ToPhysical ].
			[123]	-> [ ^ self genLowcodeMemcpyFixed ].
			[124]	-> [ ^ self genLowcodeMemcpy64 ].
			[125]	-> [ ^ self genLowcodeMemcpy32 ].
			[126]	-> [ ^ self genLowcodeMalloc64 ].
		}
		otherwise: [ ^ self genUnaryInlinePrimitive3: prim ].
	^ 0

