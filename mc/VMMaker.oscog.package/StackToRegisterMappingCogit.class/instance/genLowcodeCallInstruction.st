inline primitive generators generated code
genLowcodeCallInstruction
	"Lowcode instruction generator"
	| function |
	function := extA.

	self CallRT: function.

	extA := 0.
	^ 0

