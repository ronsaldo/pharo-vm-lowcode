inline primitive generated code
lowcodePrimitiveMoveInt64ToPhysical
	"Lowcode instruction generator"
	| registerID value |
	<var: #value type: #'sqLong' >
	registerID := extA.
	value := self internalPopStackInt64.

            self lowcodeCalloutState: lowcodeCalloutState int64Register: registerID value: value.
        
	extA := 0.

