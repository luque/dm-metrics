tests
testClassWithMultipleExternalDependencies
	| packageA packageB classQ |
	packageB := self createPackage: 'PB'.
	self createClassNamed: 'S' inPackage: packageB.
	self createClassNamed: 'T' inPackage: packageB.
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' inPackage: packageA.
	classQ compile: 'initialize  S new. T new.'.
	self assert: (DMMStabilityMetrics onPackage: packageA) efferentCoupling equals: 1