inline primitive generated code
lowcodePrimitiveCallArgumentFloat64
	"Lowcode instruction generator"
	| argumentValue |
	<var: #argumentValue type: #'double' >
	argumentValue := self internalPopStackFloat64.

	self internalPushShadowCallStackFloat64: argumentValue.


