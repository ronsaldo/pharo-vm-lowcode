inline primitive generated code
lowcodePrimitiveStoreInt32ToMemory
	"Lowcode instruction generator"
	| pointer value |
	<var: #pointer type: #'char*' >
	<var: #value type: #'sqInt' >
	value := self internalPopStackInt32.
	pointer := self internalPopStackPointer.

	self int32AtPointer: pointer put: value.


