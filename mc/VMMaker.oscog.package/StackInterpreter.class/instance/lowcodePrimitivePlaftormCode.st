inline primitive generated code
lowcodePrimitivePlaftormCode
	"Lowcode instruction generator"
	| code |
	<var: #code type: #'sqInt' >

	self abort.

	self internalPushInt32: code.

