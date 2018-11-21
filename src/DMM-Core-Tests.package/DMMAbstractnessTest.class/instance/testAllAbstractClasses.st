tests
testAllAbstractClasses
	| packageA classP classQ metrics |
	packageA := self createPackage: 'PA'.
	classP := self createClassNamed: 'P' inPackage: packageA.
	classP compile: 'abstractMethod self subclassResponsibility'.
	classQ := self createClassNamed: 'Q' inPackage: packageA.
	classQ compile: 'abstractMethod self subclassResponsibility'.
	metrics := DMMAbstractnessMetrics onPackage: packageA.
	self assert: metrics numberOfClasses  equals: 2.
	self assert: metrics numberOfAbstractClasses  equals: 2.
	self assert: metrics abstractness equals: 1