bytecode generators
extBBytecode
	"225		11100001	sbbbbbbb	Extend B (Ext B = Ext B prev * 256 + Ext B)"
	extB := (extB = 0 and: [extBFirstZero not and: [byte1 > 127]])
				ifTrue: [byte1 - 256]
				ifFalse: [(extB bitShift: 8) + byte1].
	extBFirstZero := extB = 0.
	^0