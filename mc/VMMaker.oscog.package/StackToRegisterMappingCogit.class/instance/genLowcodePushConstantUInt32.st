inline primitive generators generated code
genLowcodePushConstantUInt32
	"Lowcode instruction generator"
	| constant |
	constant := extA.

	self ssPushNativeConstantInt32: constant.

	extA := 0.
	^ 0

