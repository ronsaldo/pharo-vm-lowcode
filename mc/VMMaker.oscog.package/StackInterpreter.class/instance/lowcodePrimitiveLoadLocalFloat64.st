inline primitive generated code
lowcodePrimitiveLoadLocalFloat64
	"Lowcode instruction generator"
	| doubleValue baseOffset |
	<var: #doubleValue type: #'double' >
	baseOffset := extA.

            doubleValue := stackPages floatAtPointer: (self framePointerOfNativeLocal: baseOffset in: localFP).
        
	 self internalPushFloat64: doubleValue.
	extA := 0.

