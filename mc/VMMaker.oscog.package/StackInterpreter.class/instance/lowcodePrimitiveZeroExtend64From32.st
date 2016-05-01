inline primitive generated code
lowcodePrimitiveZeroExtend64From32
	"Lowcode instruction generator"
	| value result |
	<var: #value type: #'sqInt' >
	<var: #result type: #'sqLong' >
	value := self internalPopStackInt32.

	result := self cCoerce: value to: 'uint32_t'.

	self internalPushInt64: result.

