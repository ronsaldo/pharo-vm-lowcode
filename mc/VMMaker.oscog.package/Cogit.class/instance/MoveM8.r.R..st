abstract instructions
MoveM8: offset r: baseReg R: destReg
	<inline: true>
	<returnTypeC: #'AbstractInstruction *'>
	^self gen: MoveM8rR operand: offset operand: baseReg operand: destReg