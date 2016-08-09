inline primitive generated code
lowcodePrimitivePerformCallFloat32
	<option: #LowcodeVM>	"Lowcode instruction generator"
	| result function |
	<var: #result type: #'float' >
	function := extA.

	"self externalizeIPandSP.
	self LowcodeInterpreterCall: function Float32Result: result.
	self internalizeIPandSP."

	self internalPushFloat32: result.
	extA := 0.

