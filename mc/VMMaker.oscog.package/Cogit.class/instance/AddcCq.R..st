abstract instructions
AddcCq: quickConstant R: reg
	<inline: true>
	<returnTypeC: #'AbstractInstruction *'>
	^self gen: AddcCqR operand: quickConstant operand: reg