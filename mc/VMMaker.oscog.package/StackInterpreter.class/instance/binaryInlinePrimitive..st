inline primitive dispatch generated code
binaryInlinePrimitive: prim
	"Lowcode instruction interpreter dispatch"
	prim
		caseOf: {
			[70]	-> [ ^ self lowcodePrimitiveByteSizeOf ].
			[71]	-> [ ^ self lowcodePrimitiveFirstFieldPointer ].
			[72]	-> [ ^ self lowcodePrimitiveFirstIndexableFieldPointer ].
			[73]	-> [ ^ self lowcodePrimitiveIsBytes ].
			[74]	-> [ ^ self lowcodePrimitiveIsFloatObject ].
			[75]	-> [ ^ self lowcodePrimitiveIsIndexable ].
			[76]	-> [ ^ self lowcodePrimitiveIsIntegerObject ].
			[77]	-> [ ^ self lowcodePrimitiveIsPointers ].
			[78]	-> [ ^ self lowcodePrimitiveIsWords ].
			[79]	-> [ ^ self lowcodePrimitiveIsWordsOrBytes ].
			[80]	-> [ ^ self lowcodePrimitiveOopSmallIntegerToInt32 ].
			[81]	-> [ ^ self lowcodePrimitiveOopSmallIntegerToInt64 ].
			[82]	-> [ ^ self lowcodePrimitiveOopToBoolean32 ].
			[83]	-> [ ^ self lowcodePrimitiveOopToBoolean64 ].
			[84]	-> [ ^ self lowcodePrimitiveOopToFloat32 ].
			[85]	-> [ ^ self lowcodePrimitiveOopToFloat64 ].
			[86]	-> [ ^ self lowcodePrimitiveOopToInt32 ].
			[87]	-> [ ^ self lowcodePrimitiveOopToInt64 ].
			[88]	-> [ ^ self lowcodePrimitiveOopToPointer ].
			[89]	-> [ ^ self lowcodePrimitiveOopToPointerReinterpret ].
			[90]	-> [ ^ self lowcodePrimitiveOopToUInt32 ].
			[91]	-> [ ^ self lowcodePrimitiveOopToUInt64 ].
			[92]	-> [ ^ self lowcodePrimitivePin ].
			[93]	-> [ ^ self lowcodePrimitiveUnpin ].
		}
		otherwise: [ ^ self optimizedBinaryInlinePrimitive: prim ].
	

