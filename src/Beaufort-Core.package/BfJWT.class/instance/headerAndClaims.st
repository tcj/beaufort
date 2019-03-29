encoding
headerAndClaims
	^ { self headerEncoded . self claimsEncoded } joinSeparatedBy: $.