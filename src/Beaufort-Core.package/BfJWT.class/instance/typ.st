header
typ

	^ self header typ ifNil: [self header typ: self algorithm]