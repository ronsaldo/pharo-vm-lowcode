inline primitive generators generated code
genLowcodeCallPhysical
	"Lowcode instruction generator"
	| registerID |
	registerID := extA.

	self CallR: registerID.

	extA := 0.
	^ 0

