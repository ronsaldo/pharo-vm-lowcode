internal interpreter access
internalPushShadowCallStackStructure: structurePointer size: size
	shadowCallStackPointer := shadowCallStackPointer - size.
	self mem: shadowCallStackPointer cp: structurePointer y: size