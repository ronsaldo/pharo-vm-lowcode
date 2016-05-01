inline primitive generated code
lowcodePrimitiveFirstFieldPointer
	"Lowcode instruction generator"
	| object pointer |
	<var: #object type: #'sqInt' >
	<var: #pointer type: #'char*' >
	object := self internalPopStack.

	pointer := objectMemory firstFixedField: object.

	self internalPushPointer: pointer.

