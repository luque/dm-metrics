tests
testEmptyPackage
	| packageA |
	packageA := self createPackage: 'PA'.
	self assert: (DMMStabilityMetrics onPackage: packageA) efferentCoupling equals: 0