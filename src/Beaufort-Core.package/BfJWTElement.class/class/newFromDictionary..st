as yet unclassified
newFromDictionary: aDictionary
	| me | 
	me := self basicNew.
	aDictionary keysDo: [:key | 
		me 
			perform: key asSymbol asMutator 
			with: (aDictionary at: key) ].
	me initialize.
	^ me