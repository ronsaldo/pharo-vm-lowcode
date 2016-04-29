inline primitive generated code
lowcodePrimitivePushZeroFloat64
	"Lowcode instruction generator"
	| result |
	<var: #result type: #'double' >

            result := 0.0.
        
	 self internalPushFloat64: result.

