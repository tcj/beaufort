as yet unclassified
decrypt: aByteArray with: aKey
	| decryptor decryptedBytes |
	decryptor := PBESHA256Encryptor newPassword: aKey.
	decryptedBytes := decryptor decrypt: aByteArray.
	^ self decode: decryptedBytes asString