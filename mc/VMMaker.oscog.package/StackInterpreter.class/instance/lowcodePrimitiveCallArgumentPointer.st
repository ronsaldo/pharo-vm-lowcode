inline primitive generated code
lowcodePrimitiveCallArgumentPointer
	"Lowcode instruction generator"
	| pointerValue |
	<var: #pointerValue type: #'char*' >
	pointerValue := self internalPopStackPointer.

            self internalPushShadowCallStackPointer: pointerValue.
        

