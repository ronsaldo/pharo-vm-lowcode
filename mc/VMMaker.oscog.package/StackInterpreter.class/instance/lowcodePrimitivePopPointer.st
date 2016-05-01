inline primitive generated code
lowcodePrimitivePopPointer
	"Lowcode instruction generator"
	| pointerValue |
	<var: #pointerValue type: #'char*' >
	pointerValue := self internalPopStackPointer.



