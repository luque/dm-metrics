tests
testClassesWithOutsideDependencies
	| packageA packageB classQ |
	packageB := self createPackage: 'PB'.
	self createClassNamed: 'S' inPackage: packageB.
	self createClassNamed: 'T' inPackage: packageB.
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' inPackage: packageA.
	classQ compile: 'initialize  S new.'.
	classQ := self createClassNamed: 'R' inPackage: packageA.
	classQ compile: 'initialize  T new.'.
	self assert: (DMMStabilityMetrics onPackage: packageA) efferentCoupling equals: 2