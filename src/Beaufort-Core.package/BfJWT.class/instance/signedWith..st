signing
signedWith: aKey
	| headerAndClaims |
	self secret: aKey.
	headerAndClaims := self headerAndClaims.
	^ '{1}.{2}' format: { headerAndClaims . self signatureFrom: headerAndClaims }