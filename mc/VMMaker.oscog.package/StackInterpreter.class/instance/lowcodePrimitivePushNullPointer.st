inline primitive generated code
lowcodePrimitivePushNullPointer
	"Lowcode instruction generator"
	| result |
	<var: #result type: #'char*' >

            result := 0.
        
	 self internalPushPointer: result.

