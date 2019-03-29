as yet unclassified
decode: aString
	 ^ self newFromDictionary: (WebUtils jsonDecode: (aString base64Decoded readStream))