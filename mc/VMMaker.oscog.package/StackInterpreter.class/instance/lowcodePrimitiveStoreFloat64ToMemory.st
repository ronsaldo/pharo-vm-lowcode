inline primitive generated code
lowcodePrimitiveStoreFloat64ToMemory
	"Lowcode instruction generator"
	| doubleValue pointer |
	<var: #doubleValue type: #'double' >
	<var: #pointer type: #'char*' >
	doubleValue := self internalPopStackFloat64.
	pointer := self internalPopStackPointer.

            self floatAtPointer: pointer put: doubleValue.
        

