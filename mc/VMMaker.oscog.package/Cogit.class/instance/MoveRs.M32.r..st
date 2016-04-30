abstract instructions
MoveRs: sourceDPReg M32: offset r: baseReg
	<inline: true>
	<returnTypeC: #'AbstractInstruction *'>
	^self gen: MoveRsM32r operand: sourceDPReg operand: offset operand: baseReg