internal interpreter access
nativePreviousStackPointerIn: theFP put: valueOopPointer
	"See StackInterpreter class>>initializeFrameIndices"
	<inline: false>
	<var: #theFP type: #'char *'>
	<var: #valueOopPointer type: #'char*'>
	^ stackPages pointerAtPointer: theFP + FoxReceiver - BytesPerWord put: valueOopPointer