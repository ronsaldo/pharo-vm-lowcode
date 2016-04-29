inline primitive generated code
lowcodePrimitiveCallArgumentStructure
	"Lowcode instruction generator"
	| structurePointer structureSize |
	<var: #structurePointer type: #'char*' >
	structureSize := extA.
	structurePointer := self internalPopStackPointer.

            self internalPushShadowCallStackStructure: structurePointer size: structureSize.
        
	extA := 0.

