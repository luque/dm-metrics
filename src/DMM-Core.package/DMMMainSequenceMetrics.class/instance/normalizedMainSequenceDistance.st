public - metrics
normalizedMainSequenceDistance
	"This metric is much more convenient than the mainSequenceDistance since it ranges from [0, 1].
	Zero indicates that the package is directly on the main sequence.
	One indicates that the package is as far away as possible from the main sequence."

	| stabilityMetrics abstractnessMetrics distance |
	stabilityMetrics := DMMStabilityMetrics onPackage: self package.
	abstractnessMetrics := DMMAbstractnessMetrics onPackage: self package.
	distance := (abstractnessMetrics abstractness + stabilityMetrics instability - 1) abs.
	^distance