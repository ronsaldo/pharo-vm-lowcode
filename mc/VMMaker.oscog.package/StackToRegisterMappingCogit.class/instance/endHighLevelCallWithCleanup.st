inline ffi
endHighLevelCallWithCleanup
	currentCallCleanUpSize > 0 ifTrue: [
		self AddCq: currentCallCleanUpSize R: SPReg
	].
   self callSwitchToSmalltalkStack.
