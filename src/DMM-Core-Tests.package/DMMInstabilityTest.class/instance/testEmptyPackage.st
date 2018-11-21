tests
testEmptyPackage
	| emptyPackage |
	emptyPackage := self createPackage: 'PEmpty'.
	self assert: (DMMStabilityMetrics onPackage: emptyPackage) instability equals: 1