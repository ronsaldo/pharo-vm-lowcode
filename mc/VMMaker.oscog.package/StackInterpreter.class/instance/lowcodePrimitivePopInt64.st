inline primitive generated code
lowcodePrimitivePopInt64
	"Lowcode instruction generator"
	| value |
	<var: #value type: #'sqLong' >
	value := self internalPopStackInt64.


