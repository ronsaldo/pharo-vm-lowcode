inline primitive generated code
lowcodePrimitiveNot32
	"Lowcode instruction generator"
	| value result |
	<var: #value type: #'sqInt' >
	<var: #result type: #'sqInt' >
	value := self internalPopStackInt32.

	result := value bitXor: -1.

	self internalPushInt32: result.

