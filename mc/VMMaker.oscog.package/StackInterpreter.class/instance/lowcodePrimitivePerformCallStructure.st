inline primitive generated code
lowcodePrimitivePerformCallStructure
	"Lowcode instruction generator"
	| resultPointer result function structureSize |
	<var: #resultPointer type: #'char*' >
	<var: #result type: #'char*' >
	function := extA.
	structureSize := extB.
	result := self internalPopStackPointer.

	"self LowcodeInterpreterCallArgumentPointer: result.
	self externalizeIPandSP.
	self LowcodeInterpreterCall: function StructureResult: resultPointer Size: structureSize.
	self internalizeIPandSP."

	self internalPushPointer: resultPointer.
	extA := 0.
	extB := 0.

