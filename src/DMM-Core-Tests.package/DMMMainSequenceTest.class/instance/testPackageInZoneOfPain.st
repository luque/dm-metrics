tests
testPackageInZoneOfPain
	"Package A is in the area of (0,0) in the I/A graph. It is a highly stable and concrete package. Such a package is not desirable because it is rigid."

	| packageA classQ packageB classS packageC classT metrics |
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' inPackage: packageA.
	packageB := self createPackage: 'PB'.
	classS := self createClassNamed: 'S' inPackage: packageB.
	classS compile: 'referingMethod ^ { 1 . a . Q class}'.
	packageC := self createPackage: 'PC'.
	classT := self createClassNamed: 'T' inPackage: packageC.
	classT compile: 'referingMethod Q new.'.
	metrics := DMMMainSequenceMetrics onPackage: packageA.
	self assert: metrics normalizedMainSequenceDistance equals: 1.
	self assert: metrics mainSequenceDistance  equals: (1/2 sqrt)