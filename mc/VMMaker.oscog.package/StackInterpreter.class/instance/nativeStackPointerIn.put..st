internal interpreter access
nativeStackPointerIn: theFP put: valueOopPointer
	"See StackInterpreter class>>initializeFrameIndices"
	<inline: false>
	<var: #theFP type: #'char *'>
	<var: #valueOopPointer type: #'char *'>
	^ stackPages pointerAtPointer: theFP + FoxReceiver - (BytesPerWord*4) put: valueOopPointer