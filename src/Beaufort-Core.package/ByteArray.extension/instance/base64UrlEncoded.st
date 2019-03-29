*beaufort-core
base64UrlEncoded
	"per https://tools.ietf.org/html/rfc7515"
	| buffer |
	buffer := self base64Encoded copyUpTo: $=.
	buffer replaceAll: $+ with: $-.
	buffer replaceAll: $/ with: $_.
	^ buffer	
	