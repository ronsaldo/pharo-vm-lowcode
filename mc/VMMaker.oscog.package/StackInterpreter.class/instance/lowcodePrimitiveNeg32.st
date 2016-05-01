inline primitive generated code
lowcodePrimitiveNeg32
	"Lowcode instruction generator"
	| value result |
	<var: #value type: #'sqInt' >
	<var: #result type: #'sqInt' >
	value := self internalPopStackInt32.

	result := value negated.

	self internalPushInt32: result.

