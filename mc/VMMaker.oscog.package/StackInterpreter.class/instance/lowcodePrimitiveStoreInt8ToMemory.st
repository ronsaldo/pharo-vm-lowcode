inline primitive generated code
lowcodePrimitiveStoreInt8ToMemory
	"Lowcode instruction generator"
	| pointer value |
	<var: #pointer type: #'char*' >
	<var: #value type: #'sqInt' >
	value := self internalPopStackInt32.
	pointer := self internalPopStackPointer.

            self int8AtPointer: pointer put: value.
        

