inline primitive generated code
lowcodePrimitiveInstantiateOop
	"Lowcode instruction generator"
	| object classOop |
	<var: #object type: #'sqInt' >
	<var: #classOop type: #'sqInt' >
	classOop := self internalPopStack.

	object := objectMemory instantiateClass: classOop indexableSize: 0.

	self internalPush: object.

