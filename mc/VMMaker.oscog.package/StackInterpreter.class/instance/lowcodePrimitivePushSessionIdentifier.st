inline primitive generated code
lowcodePrimitivePushSessionIdentifier
	"Lowcode instruction generator"
	| value |
	<var: #value type: #'sqInt' >

            value := self getThisSessionID.
        
	 self internalPushInt32: value.

