tests
testAnother
	| stability |
	stability := DMMStabilityMetrics new.
	self assert: stability a equals: 'test'