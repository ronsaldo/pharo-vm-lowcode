inline primitive generated code
lowcodePrimitivePerformCallPointer
	"Lowcode instruction generator"
	| result function |
	<var: #result type: #'char*' >
	function := extA.

	"self externalizeIPandSP.
	self LowcodeInterpreterCall: function PointerResult: result.
	self internalizeIPandSP."

	self internalPushPointer: result.
	extA := 0.

