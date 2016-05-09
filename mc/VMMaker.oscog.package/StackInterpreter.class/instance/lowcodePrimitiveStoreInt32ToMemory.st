inline primitive generated code
lowcodePrimitiveStoreInt32ToMemory
	"Lowcode instruction generator"
	| pointer value |
	<var: #pointer type: #'char*' >
	<var: #value type: #'sqInt' >
	pointer := self internalPopStackPointer.
	value := self internalPopStackInt32.

	self int32AtPointer: pointer put: value.


