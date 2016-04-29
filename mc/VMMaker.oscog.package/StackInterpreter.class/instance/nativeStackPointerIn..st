internal interpreter access
nativeStackPointerIn: theFP
	"See StackInterpreter class>>initializeFrameIndices"
	<inline: false>
	<returnTypeC: #'char*'>
	<var: #theFP type: #'char *'>
	^ stackPages pointerAtPointer: theFP + FoxReceiver - (BytesPerWord*3)