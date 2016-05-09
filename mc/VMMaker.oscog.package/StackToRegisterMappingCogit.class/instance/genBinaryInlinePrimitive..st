inline primitive generators dispatch generated code
genBinaryInlinePrimitive: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[70]	-> [ ^ self genLowcodeByteSizeOf ].
			[71]	-> [ ^ self genLowcodeFirstFieldPointer ].
			[72]	-> [ ^ self genLowcodeFirstIndexableFieldPointer ].
			[73]	-> [ ^ self genLowcodeIsBytes ].
			[74]	-> [ ^ self genLowcodeIsFloatObject ].
			[75]	-> [ ^ self genLowcodeIsIndexable ].
			[76]	-> [ ^ self genLowcodeIsIntegerObject ].
			[77]	-> [ ^ self genLowcodeIsPointers ].
			[78]	-> [ ^ self genLowcodeIsWords ].
			[79]	-> [ ^ self genLowcodeIsWordsOrBytes ].
			[80]	-> [ ^ self genLowcodeOopSmallIntegerToInt32 ].
			[81]	-> [ ^ self genLowcodeOopSmallIntegerToInt64 ].
			[82]	-> [ ^ self genLowcodeOopToBoolean32 ].
			[83]	-> [ ^ self genLowcodeOopToBoolean64 ].
			[84]	-> [ ^ self genLowcodeOopToFloat32 ].
			[85]	-> [ ^ self genLowcodeOopToFloat64 ].
			[86]	-> [ ^ self genLowcodeOopToInt32 ].
			[87]	-> [ ^ self genLowcodeOopToInt64 ].
			[88]	-> [ ^ self genLowcodeOopToPointer ].
			[89]	-> [ ^ self genLowcodeOopToPointerReinterpret ].
			[90]	-> [ ^ self genLowcodeOopToUInt32 ].
			[91]	-> [ ^ self genLowcodeOopToUInt64 ].
			[92]	-> [ ^ self genLowcodePin ].
			[93]	-> [ ^ self genLowcodeUnpin ].
		}
		otherwise: [ ^ self genOptimizedBinaryInlinePrimitive: prim ].
	^ 0

