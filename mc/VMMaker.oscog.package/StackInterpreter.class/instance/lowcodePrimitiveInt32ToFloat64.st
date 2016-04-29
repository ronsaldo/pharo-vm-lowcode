inline primitive generated code
lowcodePrimitiveInt32ToFloat64
	"Lowcode instruction generator"
	| value result |
	<var: #value type: #'sqInt' >
	<var: #result type: #'double' >
	value := self internalPopStackInt32.

            result := self cCoerce: value to: 'double'.
        
	 self internalPushFloat64: result.

