inline primitive generated code
lowcodePrimitiveStoreInt64ToMemory
	"Lowcode instruction generator"
	| pointer value |
	<var: #pointer type: #'char*' >
	<var: #value type: #'sqLong' >
	value := self internalPopStackInt64.
	pointer := self internalPopStackPointer.

            self int64AtPointer: pointer put: value.
        

