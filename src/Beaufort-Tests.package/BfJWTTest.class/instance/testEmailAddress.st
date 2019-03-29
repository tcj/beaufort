as yet unclassified
testEmailAddress
	| encode decode email  |
	email := 'tjohnson@sfai.edu'.
	self assert: email equals: jwt iss.
	encode := jwt encodeForSigning.
	decode := BfJWT decode: encode.
	self assert: email equals: decode iss.