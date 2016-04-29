internal interpreter access
internalPushShadowCallStackFloat32: singleFloatValue
	<var: #singleFloatValue type: #float >
	"In the StackInterpreter stacks grow down."
	shadowCallStackPointer := shadowCallStackPointer - 4.

	"In the StackInterpreter stacks grow down."
	stackPages singleFloatAtPointer: shadowCallStackPointer put: singleFloatValue