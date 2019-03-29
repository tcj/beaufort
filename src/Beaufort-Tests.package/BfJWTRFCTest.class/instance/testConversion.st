as yet unclassified
testConversion
	self assert: headerString asByteArray equals: headerBytes.
	self assert: headerEncoded equals: headerBytes base64UrlEncoded.
	self assert: claimString asByteArray equals: claimBytes.
	self assert: claimEncoded equals: claimBytes base64UrlEncoded.