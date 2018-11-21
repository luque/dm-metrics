tests
testInstability
	| packageA classQ classR packageB classS packageC classT classU packageD classV |
	packageD := self createPackage: 'PD'.
	classV := self createClassNamed: 'V' inPackage: packageD.
	packageC := self createPackage: 'PC'.
	classT := self createClassNamed: 'T' inPackage: packageC.
	classU := self createClassNamed: 'U' extends: classV inPackage: packageC.
	packageA := self createPackage: 'PA'.
	classQ := self createClassNamed: 'Q' extends: classT inPackage: packageA.
	classR := self createClassNamed: 'R' inPackage: packageA.
	classR compile: 'referingMethod ^ U new'.
	packageB := self createPackage: 'PB'.
	classS := self createClassNamed: 'S' inPackage: packageB.
	classS compile: 'referingMethod ^ { 1 . a . U class}'.
	self assert: (DMMStabilityMetrics onPackage: packageA) instability equals: 1.
		self assert: (DMMStabilityMetrics onPackage: packageB) instability equals: 1.
		self assert: (DMMStabilityMetrics onPackage: packageC) instability equals: 0.25.
			self assert: (DMMStabilityMetrics onPackage: packageD) instability equals: 0.