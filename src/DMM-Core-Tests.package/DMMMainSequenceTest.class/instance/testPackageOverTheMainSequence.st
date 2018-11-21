tests
testPackageOverTheMainSequence
	| packageA classQ packageB classS metrics |
	packageB := self createPackage: 'PB'.
	classS := self createClassNamed: 'S' inPackage: packageB.
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' extends: classS inPackage: packageA.
	metrics := DMMMainSequenceMetrics onPackage: packageA.
	self assert: metrics normalizedMainSequenceDistance equals: 0.
	self assert: metrics mainSequenceDistance  equals: 0