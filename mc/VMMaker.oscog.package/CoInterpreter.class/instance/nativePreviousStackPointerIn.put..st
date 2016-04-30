internal interpreter access
nativePreviousStackPointerIn: theFP put: valueOopPointer
	"See StackInterpreter class>>initializeFrameIndices"
	<returnTypeC: #'char*'>
	<var: #theFP type: #'char *'>
	<var: #valueOopPointer type: #'char *'>
	^(self isMachineCodeFrame: theFP)
		ifTrue:
			[stackPages pointerAtPointer: theFP + FoxMFReceiver - BytesPerWord put: valueOopPointer]
		ifFalse:
			[stackPages pointerAtPointer: theFP + FoxIFReceiver - BytesPerWord put: valueOopPointer]