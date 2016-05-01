inline primitive generated code
lowcodePrimitiveOopToPointerReinterpret
	"Lowcode instruction generator"
	| object pointer |
	<var: #object type: #'sqInt' >
	<var: #pointer type: #'char*' >
	object := self internalPopStack.

	pointer := self cCoerce: object to: 'char*'.

	self internalPushPointer: pointer.

