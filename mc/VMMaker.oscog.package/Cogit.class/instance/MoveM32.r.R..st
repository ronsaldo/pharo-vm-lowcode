abstract instructions
MoveM32: offset r: baseReg R: destReg
	<inline: true>
	<returnTypeC: #'AbstractInstruction *'>
	^self gen: MoveM32rR operand: offset operand: baseReg operand: destReg