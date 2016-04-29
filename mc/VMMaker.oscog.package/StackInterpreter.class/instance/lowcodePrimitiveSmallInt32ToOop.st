inline primitive generated code
lowcodePrimitiveSmallInt32ToOop
	"Lowcode instruction generator"
	| object value |
	<var: #object type: #'sqInt' >
	<var: #value type: #'sqInt' >
	value := self internalPopStackInt32.

            object := objectMemory integerObjectOf: value.
        
	 self internalPush: object.

