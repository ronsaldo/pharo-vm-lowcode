inline primitive support
genLcStore: value object: object at: fieldIndex
	cogit AddCq: 8 R: object.
	cogit MoveR: value Xwr: fieldIndex R: object.