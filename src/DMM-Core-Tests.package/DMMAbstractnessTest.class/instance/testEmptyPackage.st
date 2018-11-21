tests
testEmptyPackage
	| emptyPackage abstractnessMetrics |
	emptyPackage := self createPackage: 'PEmpty'.
	abstractnessMetrics := DMMAbstractnessMetrics onPackage: emptyPackage.
	self
		assert: abstractnessMetrics numberOfClasses
		equals: 0. self
		assert: abstractnessMetrics numberOfAbstractClasses
		equals: 0 .self
		assert: abstractnessMetrics abstractness
		equals: 0