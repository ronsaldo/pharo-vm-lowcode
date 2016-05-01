inline primitive generated code
lowcodePrimitiveStorePointerToMemory
	"Lowcode instruction generator"
	| memoryPointer pointerValue |
	<var: #memoryPointer type: #'char*' >
	<var: #pointerValue type: #'char*' >
	pointerValue := self internalPopStackPointer.
	memoryPointer := self internalPopStackPointer.

	self pointerAtPointer: memoryPointer put: pointerValue.


