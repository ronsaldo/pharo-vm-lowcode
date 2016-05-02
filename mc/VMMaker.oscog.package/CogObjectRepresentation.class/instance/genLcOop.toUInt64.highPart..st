inline primitive support
genLcOop: object toUInt64: valueLow highPart: valueHigh
	object ~= ReceiverResultReg ifTrue: [ cogit MoveR: object R: ReceiverResultReg.].
	cogit CallRT: cePositive64BitValueOfTrampoline.

	Arg0Reg ~= valueHigh ifTrue: [cogit MoveR: Arg0Reg R: valueHigh].
	cogit MoveR: TempReg R: valueLow.

	cogit ssPushNativeRegister: valueLow secondRegister: valueHigh.