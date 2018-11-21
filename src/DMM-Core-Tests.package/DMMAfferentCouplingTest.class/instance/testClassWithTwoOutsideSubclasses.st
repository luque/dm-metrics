tests
testClassWithTwoOutsideSubclasses
	| packageA packageB classQ classS packageC classSV |
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' inPackage: packageA.
	packageB := self createPackage: 'PB'.
	classS := self createClassNamed: 'S' extends: classQ inPackage: packageB.
	packageC := self createPackage: 'PC'.
	classSV := self createClassNamed: 'V' extends: classS inPackage: packageC.
	self assert: (DMMStabilityMetrics onPackage: packageA) afferentCoupling equals: 2