as yet unclassified
decode: aString
	" needs work: better handle cases where there aren't enough tokens"
	| tokens header claims  |
	tokens := aString findTokens: $. .
	(tokens size > 1)
		ifTrue: [ claims := tokens at: 2 ].
	[ header := tokens at: 1 ] 
		on: Error
		do: [:e | self error: 'invalid JWT structure'].
	claims ifNotNil: [
		^ self newWithHeader: (BfJWTHeader decode: header)
			andClaims: ( BfJWTClaims decode: claims) ].
	^ self error: 'invalid JWT structure'