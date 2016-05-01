inline primitive generated code
lowcodePrimitiveMoveFloat32ToPhysical
	"Lowcode instruction generator"
	| registerID value |
	<var: #value type: #'float' >
	registerID := extA.
	value := self internalPopStackFloat32.

	self lowcodeCalloutState: lowcodeCalloutState float32Register: registerID value: value.

	extA := 0.

