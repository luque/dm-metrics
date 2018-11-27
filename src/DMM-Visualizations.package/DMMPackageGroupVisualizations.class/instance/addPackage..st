adding
addPackage: aPackage
	| packageStabilityMetrics packageAbstractnessMetrics packageMainSequenceMetrics |
	packageStabilityMetrics := DMMStabilityMetrics onPackage: aPackage.
	packageAbstractnessMetrics := DMMAbstractnessMetrics onPackage: aPackage.
	packageMainSequenceMetrics := DMMMainSequenceMetrics onPackage: aPackage.
	packages add: aPackage.
	stabilityMetrics at: aPackage put: packageStabilityMetrics.
	abstractnessMetrics
		at: aPackage
		put: packageAbstractnessMetrics . mainSequenceMetrics
		at: aPackage
		put: packageMainSequenceMetrics