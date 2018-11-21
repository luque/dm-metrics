tests
testEmptyPackage
	| emptyPackage |
	emptyPackage := self createPackage: 'PEmpty'.
	self assert: ((DMMStabilityMetrics onPackage: emptyPackage) excludedNonVolatilePackages: self packageNamesForTests) afferentCoupling equals: 0