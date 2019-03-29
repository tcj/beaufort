as yet unclassified
setUp
	headerString := '{"typ":"JWT",', Character cr, Character lf, Character space, '"alg":"HS256"}'.
	headerBytes := #[123 34 116 121 112 34 58 34 74 87 84 34 44 13 10 32 34 97 108 103 34 58 34 72 83 50 53 54 34 125].
	headerEncoded := 'eyJ0eXAiOiJKV1QiLA0KICJhbGciOiJIUzI1NiJ9'.
	claimString := '{"iss":"joe",', Character cr, Character lf, Character space, '"exp":1300819380,', Character cr, Character lf, Character space, 
						'"http://example.com/is_root":true}'.
	claimBytes :=  #[123 34 105 115 115 34 58 34 106 111 101 34 44 13 10
   32 34 101 120 112 34 58 49 51 48 48 56 49 57 51 56
   48 44 13 10 32 34 104 116 116 112 58 47 47 101 120 97
   109 112 108 101 46 99 111 109 47 105 115 95 114 111
   111 116 34 58 116 114 117 101 125].
	claimEncoded := 'eyJpc3MiOiJqb2UiLA0KICJleHAiOjEzMDA4MTkzODAsDQogImh0dHA6Ly9leGFtcGxlLmNvbS9pc19yb290Ijp0cnVlfQ'.