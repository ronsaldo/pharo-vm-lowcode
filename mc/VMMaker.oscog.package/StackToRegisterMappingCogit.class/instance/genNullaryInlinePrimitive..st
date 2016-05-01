inline primitive generators dispatch generated code
genNullaryInlinePrimitive: prim
	"Lowcode instruction generator dispatch"
	prim
		caseOf: {
			[0]	-> [ ^ self genLowcodeUint64ToOop ].
			[1]	-> [ ^ self genLowcodeUint32ToOop ].
			[2]	-> [ ^ self genLowcodeSmallInt32ToOop ].
			[3]	-> [ ^ self genLowcodePointerToOopReinterprer ].
			[4]	-> [ ^ self genLowcodePointerToOop ].
			[5]	-> [ ^ self genLowcodeInt64ToOop ].
			[6]	-> [ ^ self genLowcodeInt32ToOop ].
			[7]	-> [ ^ self genLowcodeFloat64ToOop ].
			[8]	-> [ ^ self genLowcodeFloat32ToOop ].
			[9]	-> [ ^ self genLowcodeBoolean64ToOop ].
			[10]	-> [ ^ self genLowcodeBoolean32ToOop ].
		}
		otherwise: [ ^ self genOptimizedNullaryInlinePrimitive: prim ].
	^ 0

