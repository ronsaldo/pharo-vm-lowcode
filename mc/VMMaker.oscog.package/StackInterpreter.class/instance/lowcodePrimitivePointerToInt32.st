inline primitive generated code
lowcodePrimitivePointerToInt32
	"Lowcode instruction generator"
	| pointer result |
	<var: #pointer type: #'char*' >
	<var: #result type: #'sqInt' >
	pointer := self internalPopStackPointer.

            result := self cCoerce: pointer to: 'uintptr_t'.
        
	 self internalPushInt32: result.

