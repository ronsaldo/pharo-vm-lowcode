compaction
sweepToFollowForwardersForPigCompact
	"Sweep, following forwarders in all live objects.
	 Answer the lowest forwarder in oldSpace."
	| lowestForwarder |
	self assert: (freeStart = scavenger eden start
				  and: [scavenger futureSurvivorStart = scavenger futureSpace start]).
	self allPastSpaceObjectsDo:
		[:o|
		(self isForwarded: o) ifFalse:
			[0 to: (self numPointerSlotsOf: o) - 1 do:
				[:i| | f |
				f := self fetchPointer: i ofObject: o.
				(self isOopForwarded: f) ifTrue:
					[f := self followForwarded: f.
					 self storePointerUnchecked: i ofObject: o withValue: f]]]].
	lowestForwarder := 0.
	self allOldSpaceObjectsDo:
		[:o|
		(self isForwarded: o)
			ifTrue:
				[lowestForwarder = 0 ifTrue:
					[lowestForwarder := 0]]
			ifFalse:
				[0 to: (self numPointerSlotsOf: o) - 1 do:
					[:i| | f |
					f := self fetchPointer: i ofObject: o.
					(self isOopForwarded: f) ifTrue:
						[f := self followForwarded: f.
						 self storePointer: i ofObject: o withValue: f]]]].
	^lowestForwarder