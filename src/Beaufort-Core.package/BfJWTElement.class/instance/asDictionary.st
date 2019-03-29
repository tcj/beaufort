as yet unclassified
asDictionary
	| d | 
	d := Dictionary new.
	self class allInstVarNames do: [:name |
		d at: name put: (self perform: name asSymbol) ].
	^ d