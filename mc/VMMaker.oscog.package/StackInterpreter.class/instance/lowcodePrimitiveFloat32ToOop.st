inline primitive generated code
lowcodePrimitiveFloat32ToOop
	"Lowcode instruction generator"
	| object value |
	<var: #object type: #'sqInt' >
	<var: #value type: #'float' >
	value := self internalPopStackFloat32.

	object := self floatObjectOf: value.

	self internalPush: object.

