internal interpreter access
internalPushPointer: pointerValue
	<var: #pointerValue type: #'char*' >
	"In the StackInterpreter stacks grow down."
	nativeSP := (self nativeStackPointerIn: localFP) - BytesPerOop.
	self nativeStackPointerIn: localFP put: nativeSP.

	"In the StackInterpreter stacks grow down."
	stackPages pointerAtPointer: (nativeSP - 1) put: pointerValue
