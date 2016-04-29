inline primitive generated code
lowcodePrimitivePopFloat64
	"Lowcode instruction generator"
	| value |
	<var: #value type: #'double' >
	value := self internalPopStackFloat64.


