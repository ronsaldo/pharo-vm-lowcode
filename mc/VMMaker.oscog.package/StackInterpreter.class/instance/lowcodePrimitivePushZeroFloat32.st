inline primitive generated code
lowcodePrimitivePushZeroFloat32
	"Lowcode instruction generator"
	| result |
	<var: #result type: #'float' >

            result := 0.0.
        
	 self internalPushFloat32: result.

