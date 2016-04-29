inline primitive generated code
lowcodePrimitivePerformCallInt32
	"Lowcode instruction generator"
	| result function |
	<var: #result type: #'sqInt' >
	function := extA.

            "self externalizeIPandSP.
            self LowcodeInterpreterCall: function Int32Result: result.
            self internalizeIPandSP."
        
	 self internalPushInt32: result.
	extA := 0.

