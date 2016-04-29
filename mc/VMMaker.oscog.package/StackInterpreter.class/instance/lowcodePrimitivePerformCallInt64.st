inline primitive generated code
lowcodePrimitivePerformCallInt64
	"Lowcode instruction generator"
	| result function |
	<var: #result type: #'sqLong' >
	function := extA.

            "self externalizeIPandSP.
            self LowcodeInterpreterCall: function Int64Result: result.
            self internalizeIPandSP."
        
	 self internalPushInt64: result.
	extA := 0.

