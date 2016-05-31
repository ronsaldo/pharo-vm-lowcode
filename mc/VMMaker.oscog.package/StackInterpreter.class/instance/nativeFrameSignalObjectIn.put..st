internal interpreter access
nativeFrameSignalObjectIn: theFP put: oop
	"See StackInterpreter class>>initializeFrameIndices"
	<inline: false>
	<var: #theFP type: #'char *'>
	^ stackPages longAt: theFP + FoxReceiver - BytesPerWord put: oop