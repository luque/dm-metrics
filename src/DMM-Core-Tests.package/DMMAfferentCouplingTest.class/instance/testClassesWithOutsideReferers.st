tests
testClassesWithOutsideReferers
	| packageA packageB classQ classR classS classT |
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' inPackage: packageA.
	classR := self createClassNamed: 'R' inPackage: packageA.
	packageB := self createPackage: 'PB'.
	classS := self createClassNamed: 'S' inPackage: packageB.
	classS compile: 'referingMethod Q new'.
	classT := self createClassNamed: 'T' inPackage: packageB.
	classT compile: 'referingMethod { R . 2 }'.
	self assert: (DMMStabilityMetrics onPackage: packageA) afferentCoupling equals: 2