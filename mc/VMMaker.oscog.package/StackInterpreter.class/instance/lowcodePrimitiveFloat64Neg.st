inline primitive generated code
lowcodePrimitiveFloat64Neg
	"Lowcode instruction generator"
	| value result |
	<var: #value type: #'double' >
	<var: #result type: #'double' >
	value := self internalPopStackFloat64.

	result := first negated.

	self internalPushFloat64: result.

