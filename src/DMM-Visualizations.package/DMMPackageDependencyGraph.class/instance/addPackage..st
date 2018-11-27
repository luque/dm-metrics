adding
addPackage: aPackage
	| metrics |
	metrics := DMMStabilityMetrics onPackage: aPackage.
	packages add: aPackage.
	packageMetrics at: aPackage put: metrics