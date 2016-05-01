inline primitive generated code
lowcodePrimitivePointerToOopReinterprer
	"Lowcode instruction generator"
	| pointer object |
	<var: #pointer type: #'char*' >
	<var: #object type: #'sqInt' >
	pointer := self internalPopStackPointer.

	object := self cCoerce: pointer to: 'sqInt'.

	self internalPush: object.

