as yet unclassified
signatureFrom: aString
	| encrypted |
	encrypted := SHA256 new hmac 
		key: (self secret asByteArray); 
		digestMessage: aString asByteArray.
	^ encrypted asByteArray base64UrlEncoded