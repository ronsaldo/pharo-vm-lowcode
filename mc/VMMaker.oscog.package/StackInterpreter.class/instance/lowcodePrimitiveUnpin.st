inline primitive generated code
lowcodePrimitiveUnpin
	"Lowcode instruction generator"
	| object |
	<var: #object type: #'sqInt' >
	object := self internalPopStack.

            objectMemory unpinObject: object.
        

