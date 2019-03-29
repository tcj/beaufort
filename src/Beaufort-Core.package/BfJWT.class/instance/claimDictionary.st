claims
claimDictionary
	| d | 
	d := Dictionary new.
	d addAll: {
		'iss' -> self iss.
		'scope' -> self scope.
		'aud' -> self aud.
		'exp' -> self exp.
		'iat' -> self iat }.
	self sub ifNotNil: [:s | d add: 'sub' -> s ].
	^ d