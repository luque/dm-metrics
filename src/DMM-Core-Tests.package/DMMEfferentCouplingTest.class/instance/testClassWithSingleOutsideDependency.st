tests
testClassWithSingleOutsideDependency
	| packageA packageB classQ |
	packageB := self createPackage: 'PB'.
	self createClassNamed: 'S' inPackage: packageB.
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' inPackage: packageA.
	classQ compile: 'initialize  S new.'.
	self assert: (DMMStabilityMetrics onPackage: packageA) efferentCoupling equals: 1