abstract instructions
MoveM32: offset r: baseReg Rs: destDPReg
	<inline: true>
	<returnTypeC: #'AbstractInstruction *'>
	^self gen: MoveM32rRs operand: offset operand: baseReg operand: destDPReg