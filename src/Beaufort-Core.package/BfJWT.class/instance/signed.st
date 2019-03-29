signing
signed
	| headerAndClaims |
	headerAndClaims := self headerAndClaims.
	^ '{1}.{2}' format: { headerAndClaims . self signatureFrom: headerAndClaims }