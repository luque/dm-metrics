tests
testClassWithMultipleExternalDependencies
	| packageA packageB classQ classS classT |
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' inPackage: packageA.
	packageB := self createPackage: 'PB'.
	classS := self createClassNamed: 'S' inPackage: packageB.
	classS compile: 'referingMethod  Q new.'.
	classT := self createClassNamed: 'T' inPackage: packageB.
	classT compile: 'referingMethod Q new.'.
	self assert: (DMMStabilityMetrics onPackage: packageA) afferentCoupling equals: 2