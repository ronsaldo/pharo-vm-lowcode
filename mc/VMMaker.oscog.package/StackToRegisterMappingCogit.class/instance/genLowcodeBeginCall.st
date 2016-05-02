inline primitive generators generated code
genLowcodeBeginCall
	"Lowcode instruction generator"
	| alignment |
	alignment := extA.

	self beginHighLevelCall: alignment.

	extA := 0.
	^ 0

