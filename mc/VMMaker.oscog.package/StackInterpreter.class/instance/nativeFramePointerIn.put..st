internal interpreter access
nativeFramePointerIn: theFP put: valueOopPointer
	"See StackInterpreter class>>initializeFrameIndices"
	<inline: false>
	<var: #theFP type: #'char *'>
	<var: #valueOopPointer type: #'char*'>
	^ stackPages pointerAtPointer: theFP + FoxReceiver - (BytesPerWord*3) put: valueOopPointer