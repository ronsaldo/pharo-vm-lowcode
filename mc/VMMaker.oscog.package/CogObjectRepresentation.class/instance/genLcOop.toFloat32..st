inline primitive support
genLcOop: object toFloat32: value
	object ~= ReceiverResultReg ifTrue: [ cogit MoveR: object R: ReceiverResultReg].
	cogit CallRT: ceFloatValueOfTrampoline.

	cogit ConvertRd: DPFPReg0 Rs: value.
	cogit ssPushNativeRegisterSingleFloat: value.