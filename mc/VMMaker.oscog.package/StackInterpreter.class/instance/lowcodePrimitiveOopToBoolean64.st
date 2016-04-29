inline primitive generated code
lowcodePrimitiveOopToBoolean64
	"Lowcode instruction generator"
	| object value |
	<var: #object type: #'sqInt' >
	<var: #value type: #'sqLong' >
	object := self internalPopStack.

            value := self booleanValueOf: object.
        
	 self internalPushInt64: value.

