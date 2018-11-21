tests
testClassWithTwoOutsideSuperclasses
	| packageA packageB classS classT packageC classU |
	packageA := self createPackage: 'PA'.
	classS := self createClassNamed: 'S' inPackage: packageA.
	packageB := self createPackage: 'PB'.
	classT := self createClassNamed: 'T' extends: classS inPackage: packageB.
	packageC := self createPackage: 'PC'.
	classU := self createClassNamed: 'U' extends: classT inPackage: packageC.
	self assert: (DMMStabilityMetrics onPackage: packageC) efferentCoupling equals: 1