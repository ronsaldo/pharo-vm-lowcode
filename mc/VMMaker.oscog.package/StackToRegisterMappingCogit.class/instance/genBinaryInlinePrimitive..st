inline primitive generators dispatch generated code
genBinaryInlinePrimitive: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[70]	-> [ ^ self genLowcodeUnpin ].
			[71]	-> [ ^ self genLowcodePin ].
			[72]	-> [ ^ self genLowcodeOopToUInt64 ].
			[73]	-> [ ^ self genLowcodeOopToUInt32 ].
			[74]	-> [ ^ self genLowcodeOopToPointerReinterpret ].
			[75]	-> [ ^ self genLowcodeOopToPointer ].
			[76]	-> [ ^ self genLowcodeOopToInt64 ].
			[77]	-> [ ^ self genLowcodeOopToInt32 ].
			[78]	-> [ ^ self genLowcodeOopToFloat64 ].
			[79]	-> [ ^ self genLowcodeOopToFloat32 ].
			[80]	-> [ ^ self genLowcodeOopToBoolean64 ].
			[81]	-> [ ^ self genLowcodeOopToBoolean32 ].
			[82]	-> [ ^ self genLowcodeOopSmallIntegerToInt64 ].
			[83]	-> [ ^ self genLowcodeOopSmallIntegerToInt32 ].
			[84]	-> [ ^ self genLowcodeIsWordsOrBytes ].
			[85]	-> [ ^ self genLowcodeIsWords ].
			[86]	-> [ ^ self genLowcodeIsPointers ].
			[87]	-> [ ^ self genLowcodeIsIntegerObject ].
			[88]	-> [ ^ self genLowcodeIsIndexable ].
			[89]	-> [ ^ self genLowcodeIsFloatObject ].
			[90]	-> [ ^ self genLowcodeIsBytes ].
			[91]	-> [ ^ self genLowcodeFirstIndexableFieldPointer ].
			[92]	-> [ ^ self genLowcodeFirstFieldPointer ].
			[93]	-> [ ^ self genLowcodeByteSizeOf ].
		}
		otherwise: [ ^ self genOptimizedBinaryInlinePrimitive: prim ].
	^ 0

