internal interpreter access
nativeFrameSignalObjectIn: theFP
	"See StackInterpreter class>>initializeFrameIndices"
	<inline: false>
	<var: #theFP type: #'char *'>
	^ stackPages longAt: theFP + FoxReceiver - (BytesPerWord*3)