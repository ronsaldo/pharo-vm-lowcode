inline primitive generated code
lowcodePrimitivePopFloat32
	"Lowcode instruction generator"
	| value |
	<var: #value type: #'float' >
	value := self internalPopStackFloat32.


