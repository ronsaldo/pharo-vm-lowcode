inline primitive generated code
lowcodePrimitivePerformCallFloat64
	"Lowcode instruction generator"
	| result function |
	<var: #result type: #'double' >
	function := extA.

            "self externalizeIPandSP.
            self LowcodeInterpreterCall: function Float64Result: result.
            self internalizeIPandSP."
        
	 self internalPushFloat64: result.
	extA := 0.

