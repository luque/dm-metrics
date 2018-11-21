tests
testClassWithOutsideSubclass
	| packageA packageB classQ classS |
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' inPackage: packageA.
	packageB := self createPackage: 'PB'.
	classS := self createClassNamed: 'S' extends: classQ inPackage: packageB.
	classS compile: 'referingMethod Q new.'.
	self assert: (DMMStabilityMetrics onPackage: packageA) afferentCoupling equals: 1