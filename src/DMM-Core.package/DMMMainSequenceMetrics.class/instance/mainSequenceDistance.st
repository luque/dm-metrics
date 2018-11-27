public - metrics
mainSequenceDistance
	"Distance which measures how far away a package is from the ideal main sequence in the I/A graph.
    The metric ranges from [0, ~0.707]"

	^ self normalizedMainSequenceDistance / 2 sqrt
	