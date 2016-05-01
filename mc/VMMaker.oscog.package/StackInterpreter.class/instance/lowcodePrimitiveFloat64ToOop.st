inline primitive generated code
lowcodePrimitiveFloat64ToOop
	"Lowcode instruction generator"
	| object value |
	<var: #object type: #'sqInt' >
	<var: #value type: #'double' >
	value := self internalPopStackFloat64.

	object := self floatObjectOf: value.

	self internalPush: object.

