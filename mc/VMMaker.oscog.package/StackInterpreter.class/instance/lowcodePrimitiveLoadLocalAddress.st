inline primitive generated code
lowcodePrimitiveLoadLocalAddress
	"Lowcode instruction generator"
	| pointer baseOffset |
	<var: #pointer type: #'char*' >
	baseOffset := extA.

	pointer := self framePointerOfNativeLocal: baseOffset in: localFP.

	self internalPushPointer: pointer.
	extA := 0.

