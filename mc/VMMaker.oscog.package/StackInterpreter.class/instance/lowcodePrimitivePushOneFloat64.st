inline primitive generated code
lowcodePrimitivePushOneFloat64
	"Lowcode instruction generator"
	| result |
	<var: #result type: #'double' >

            result := 1.0.
        
	 self internalPushFloat64: result.

