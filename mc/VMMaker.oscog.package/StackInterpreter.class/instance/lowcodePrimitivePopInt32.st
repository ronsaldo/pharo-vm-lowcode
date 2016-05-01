inline primitive generated code
lowcodePrimitivePopInt32
	"Lowcode instruction generator"
	| value |
	<var: #value type: #'sqInt' >
	value := self internalPopStackInt32.



