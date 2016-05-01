inline primitive dispatch generated code
binaryInlinePrimitive: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[70]	-> [ ^ self lowcodePrimitiveUnpin ].
			[71]	-> [ ^ self lowcodePrimitivePin ].
			[72]	-> [ ^ self lowcodePrimitiveOopToUInt64 ].
			[73]	-> [ ^ self lowcodePrimitiveOopToUInt32 ].
			[74]	-> [ ^ self lowcodePrimitiveOopToPointerReinterpret ].
			[75]	-> [ ^ self lowcodePrimitiveOopToPointer ].
			[76]	-> [ ^ self lowcodePrimitiveOopToInt64 ].
			[77]	-> [ ^ self lowcodePrimitiveOopToInt32 ].
			[78]	-> [ ^ self lowcodePrimitiveOopToFloat64 ].
			[79]	-> [ ^ self lowcodePrimitiveOopToFloat32 ].
			[80]	-> [ ^ self lowcodePrimitiveOopToBoolean64 ].
			[81]	-> [ ^ self lowcodePrimitiveOopToBoolean32 ].
			[82]	-> [ ^ self lowcodePrimitiveOopSmallIntegerToInt64 ].
			[83]	-> [ ^ self lowcodePrimitiveOopSmallIntegerToInt32 ].
			[84]	-> [ ^ self lowcodePrimitiveIsWordsOrBytes ].
			[85]	-> [ ^ self lowcodePrimitiveIsWords ].
			[86]	-> [ ^ self lowcodePrimitiveIsPointers ].
			[87]	-> [ ^ self lowcodePrimitiveIsIntegerObject ].
			[88]	-> [ ^ self lowcodePrimitiveIsIndexable ].
			[89]	-> [ ^ self lowcodePrimitiveIsFloatObject ].
			[90]	-> [ ^ self lowcodePrimitiveIsBytes ].
			[91]	-> [ ^ self lowcodePrimitiveFirstIndexableFieldPointer ].
			[92]	-> [ ^ self lowcodePrimitiveFirstFieldPointer ].
			[93]	-> [ ^ self lowcodePrimitiveByteSizeOf ].
		}
		otherwise: [ ^ self optimizedBinaryInlinePrimitive: prim ].
	

