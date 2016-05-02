inline primitive generators generated code
genLowcodePushSessionIdentifier
	"Lowcode instruction generator"

	self ssPushNativeConstantInt32: coInterpreter getThisSessionID.

	^ 0

