tests
testEmptyPackage
	| emptyPackage |
	emptyPackage := self createPackage: 'PEmpty'.
	self assert: (DMMStabilityMetrics onPackage: emptyPackage) efferentCoupling equals: 0