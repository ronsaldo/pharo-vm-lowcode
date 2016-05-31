inline primitive generated code
lowcodePrimitiveOopToFloat64
	"Lowcode instruction generator"
	| object value |
	<var: #object type: #'sqInt' >
	<var: #value type: #'double' >
	object := self internalPopStack.

	value := objectMemory floatValueOf: object.

	self internalPushFloat64: value.

