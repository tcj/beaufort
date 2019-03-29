as yet unclassified
newFromJson: aJsonString
	^ self newFromDictionary: (WebUtils jsonDecode: aJsonString)