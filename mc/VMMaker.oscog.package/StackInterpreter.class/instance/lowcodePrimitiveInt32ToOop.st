inline primitive generated code
lowcodePrimitiveInt32ToOop
	"Lowcode instruction generator"
	| object value |
	<var: #object type: #'sqInt' >
	<var: #value type: #'sqInt' >
	value := self internalPopStackInt32.

            object := objectMemory signed32BitIntegerFor: value.
        
	 self internalPush: object.

