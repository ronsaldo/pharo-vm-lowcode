inline primitive generated code
lowcodePrimitiveFloat64ToInt32
	"Lowcode instruction generator"
	| floatValue int32Result |
	<var: #floatValue type: #'double' >
	<var: #int32Result type: #'sqInt' >
	floatValue := self internalPopStackFloat64.

	int32Result := self cCoerce: floatValue to: 'sqInt'.

	self internalPushInt32: int32Result.

