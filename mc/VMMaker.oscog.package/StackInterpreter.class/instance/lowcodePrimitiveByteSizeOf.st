inline primitive generated code
lowcodePrimitiveByteSizeOf
	"Lowcode instruction generator"
	| object value |
	<var: #object type: #'sqInt' >
	<var: #value type: #'sqInt' >
	object := self internalPopStack.

	value := self byteSizeOf: object.

	self internalPushInt32: value.

