inline primitive generated code
lowcodePrimitivePin
	"Lowcode instruction generator"
	| object |
	<var: #object type: #'sqInt' >
	object := self internalPopStack.

            objectMemory pinObject: object.
        

