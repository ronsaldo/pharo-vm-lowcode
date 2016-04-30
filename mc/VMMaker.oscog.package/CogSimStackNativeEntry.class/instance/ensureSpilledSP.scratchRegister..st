compile abstract instructions
ensureSpilledSP: spRegister scratchRegister: scratchRegister
	spilled ifFalse: [
		type caseOf: {
			[SSNativeRegister]	-> [
					cogit MoveR: register Mw: offset negated - 1 r: spRegister.
					type := SSSpillNative.
				].
			[SSRegisterSingleFloat]	-> [
					cogit MoveRs: register M32: offset negated - 1 r: spRegister.
					type := SSSpillFloat32.
				].
			[SSRegisterDoubleFloat] -> [
					cogit MoveRd: register M64: offset negated - 1 r: spRegister.
					type := SSSpillFloat64.
				].
			[SSConstantInt32]	-> [
					cogit MoveCq: constantInt32 R: scratchRegister.
					cogit MoveR: scratchRegister Mw: offset negated - 1 r: spRegister.
					type := SSSpillNative.
				].
			[SSConstantNativePointer]	-> [
					cogit MoveCw: constantNativePointer R: scratchRegister.
					cogit MoveR: scratchRegister Mw: offset negated - 1 r: spRegister.
					type := SSSpillNative.
				].
		}
	].

	spilled := true.

