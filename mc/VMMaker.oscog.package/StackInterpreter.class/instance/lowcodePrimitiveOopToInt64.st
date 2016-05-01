inline primitive generated code
lowcodePrimitiveOopToInt64
	"Lowcode instruction generator"
	| object value |
	<var: #object type: #'sqInt' >
	<var: #value type: #'sqLong' >
	object := self internalPopStack.

	value := self signed64BitValueOf: object.

	self internalPushInt64: value.

