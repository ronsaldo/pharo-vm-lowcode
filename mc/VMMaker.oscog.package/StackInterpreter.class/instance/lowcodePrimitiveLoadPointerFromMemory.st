inline primitive generated code
lowcodePrimitiveLoadPointerFromMemory
	"Lowcode instruction generator"
	| pointerResult pointer |
	<var: #pointerResult type: #'char*' >
	<var: #pointer type: #'char*' >
	pointer := self internalPopStackPointer.

            pointerResult := self pointerAtPointer: pointer.
        
	 self internalPushPointer: pointerResult.

