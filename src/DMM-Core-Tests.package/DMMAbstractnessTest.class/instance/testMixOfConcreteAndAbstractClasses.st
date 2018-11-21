tests
testMixOfConcreteAndAbstractClasses
	| packageA classP classQ classR metrics |
	packageA := self createPackage: 'PA'.
	classP := self createClassNamed: 'P' inPackage: packageA.
	classP compile: 'abstractMethod self subclassResponsibility'.
	classQ := self createClassNamed: 'Q' inPackage: packageA.
	classQ compile: 'abstractMethod self subclassResponsibility'.
	classR := self createClassNamed: 'R' inPackage: packageA.
	classR compile: 'method ^ self name'.
	metrics := DMMAbstractnessMetrics onPackage: packageA.
	self assert: metrics numberOfClasses equals: 3.
	self assert: metrics numberOfAbstractClasses equals: 2.
	self assert: metrics abstractness closeTo: 0.6666