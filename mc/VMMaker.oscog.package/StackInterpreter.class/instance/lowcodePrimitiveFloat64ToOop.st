inline primitive generated code
lowcodePrimitiveFloat64ToOop
	"Lowcode instruction generator"
	| floatValue object |
	<var: #floatValue type: #'double' >
	<var: #object type: #'sqInt' >
	floatValue := self internalPopStackFloat64.

	object := objectMemory floatObjectOf: floatValue.

	self internalPush: object.

