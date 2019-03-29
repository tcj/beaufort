encoding
encode: aDictionary
	"copyWithout: Character space"
	^ aDictionary asJson asByteArray base64UrlEncoded