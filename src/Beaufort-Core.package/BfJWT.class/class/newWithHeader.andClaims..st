as yet unclassified
newWithHeader: header andClaims: claims
	^ self basicNew
		header: header;
		claims: claims;
		"skip initialization..."
		yourself