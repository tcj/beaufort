as yet unclassified
signatureFrom: aString
	| signedMessage hashed privateKey |
	privateKey := (Pkcs12PrivateKeyFileReader fromFile: 'timj-project-mar-2019-a94d67a8d0c8.p12') asPrivateKey.
	signedMessage := privateKey signMessage: aString.
	hashed := SHA256 new hashStream: signedMessage readStream.
	^ hashed base64UrlEncoded