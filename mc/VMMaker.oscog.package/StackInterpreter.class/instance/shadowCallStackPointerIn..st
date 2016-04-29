internal interpreter access
shadowCallStackPointerIn: theFP
	"See StackInterpreter class>>initializeFrameIndices"
	<inline: false>
	<var: #theFP type: #'char *'>
	^ stackPages pointerAtPointer: theFP + FoxReceiver - (BytesPerWord*4)