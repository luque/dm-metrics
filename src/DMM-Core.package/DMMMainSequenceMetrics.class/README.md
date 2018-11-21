I represent the metrics about relationship between stability (I) and abstractness (A) of a package as published by Robert C. Martin.

Responsabilities:
    - I know how far away a given package is from the ideal main sequence, i.e. the locus of points on the A/I graph that defines
reasonable positions for packages.

Public API and Key Messages:

    - mainSequenceDistance
    - normalizedMainSequenceDistance

Some  examples of usage:

    (DMMStabilityMetrics onPackageNamed: 'Collections-Sequenceable') normalizedMainSequenceDistance. 

    ((DMMStabilityMetrics onPackageNamed: 'Collections-Sequenceable')
        addNonVolatilePackageNames: { #'Collections-Tests-Arrayed'})
        afferentCoupling.
