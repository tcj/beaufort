header
alg

	^ self header alg ifNil: [self header alg: self algorithm]