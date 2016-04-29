inline primitive generated code
lowcodePrimitivePushOne64
	"Lowcode instruction generator"
	| result |
	<var: #result type: #'sqLong' >

            result := 1.
        
	 self internalPushInt64: result.

