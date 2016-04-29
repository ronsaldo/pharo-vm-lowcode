inline primitive generated code
lowcodePrimitiveStoreFloat32ToMemory
	"Lowcode instruction generator"
	| floatValue pointer |
	<var: #floatValue type: #'float' >
	<var: #pointer type: #'char*' >
	floatValue := self internalPopStackFloat32.
	pointer := self internalPopStackPointer.

            self singleFloatAtPointer: pointer put: floatValue.
        

