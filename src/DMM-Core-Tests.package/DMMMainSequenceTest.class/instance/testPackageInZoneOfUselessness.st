tests
testPackageInZoneOfUselessness
	"Package A is maximally abstract and yet has no dependents. Such package is useless. Thus, this is called the Zone of Uselessness."

	| packageA classQ packageB classS metrics |
	packageB := self createPackage: 'PB'.
	classS := self createClassNamed: 'S' inPackage: packageB.
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' extends: classS inPackage: packageA.
	classQ compile: 'abstractMethod self subclassResponsibility'.
	metrics := (DMMMainSequenceMetrics onPackage: packageA).
	self assert: metrics normalizedMainSequenceDistance equals: 1.
	self assert: metrics mainSequenceDistance  equals: 1 / 2 sqrt.