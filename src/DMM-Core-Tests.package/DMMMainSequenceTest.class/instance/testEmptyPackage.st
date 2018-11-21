tests
testEmptyPackage
	| emptyPackage metrics |
	emptyPackage := self createPackage: 'PEmpty'.
	metrics := DMMMainSequenceMetrics onPackage: emptyPackage.
	self assert: metrics mainSequenceDistance equals: 0.
	self assert: metrics normalizedMainSequenceDistance  equals: 0