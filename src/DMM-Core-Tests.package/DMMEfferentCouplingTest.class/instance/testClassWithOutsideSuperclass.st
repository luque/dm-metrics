tests
testClassWithOutsideSuperclass
	| packageA packageB classQ classS |
	packageB := self createPackage: 'PB'.
	classS := self createClassNamed: 'S' inPackage: packageB.
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' extends: classS inPackage: packageA.
	self assert: (DMMStabilityMetrics onPackage: packageA) efferentCoupling equals: 1