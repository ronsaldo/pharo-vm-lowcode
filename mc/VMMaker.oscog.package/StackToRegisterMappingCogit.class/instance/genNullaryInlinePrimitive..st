inline primitive generators dispatch generated code
genNullaryInlinePrimitive: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[1]	-> [ ^ self genLowcodeBoolean32ToOop ].
			[2]	-> [ ^ self genLowcodeBoolean64ToOop ].
			[3]	-> [ ^ self genLowcodeFloat32ToOop ].
			[4]	-> [ ^ self genLowcodeFloat64ToOop ].
			[5]	-> [ ^ self genLowcodeInt32ToOop ].
			[6]	-> [ ^ self genLowcodeInt64ToOop ].
			[7]	-> [ ^ self genLowcodePointerToOop ].
			[8]	-> [ ^ self genLowcodePointerToOopReinterprer ].
			[9]	-> [ ^ self genLowcodeSmallInt32ToOop ].
			[10]	-> [ ^ self genLowcodeUint32ToOop ].
			[11]	-> [ ^ self genLowcodeUint64ToOop ].
		}
		otherwise: [ ^ self genOptimizedNullaryInlinePrimitive: prim ].
	^ 0

