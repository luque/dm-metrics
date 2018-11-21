tests
testAllConcreteClasses
	| packageA metrics |
	packageA := self createPackage: 'PA'.
	self createClassNamed: 'P' inPackage: packageA.
	self createClassNamed: 'Q' inPackage: packageA.
	metrics := DMMAbstractnessMetrics onPackage: packageA.
	self assert: metrics numberOfClasses  equals: 2.
	self assert: metrics numberOfAbstractClasses equals: 0.
	self assert: metrics abstractness equals: 0