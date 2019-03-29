initialize-release
initialize
	super initialize.
	header := BfJWTHeader new
		alg: self algorithm;
		yourself.
	claims := BfJWTClaims new.
	secret := 'abc123'.
