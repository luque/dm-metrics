tests
testIsolatedClass
	| packageA |
	packageA := self createPackage: 'PA'.
	self createClassNamed: 'Q' inPackage: packageA.
	self assert: (DMMStabilityMetrics onPackage: packageA) afferentCoupling equals: 0