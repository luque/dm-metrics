I represent the kind of metrics related with the stability of a package as published by Robert C. Martin.

Stability is related to the amount of work required to make a change. A package with lots of incoming
dependencies is very stable because it requires a great deal of work to reconcile any changes with all 
the dependent packages.

Responsabilities:
    - I know how measure the stability of a given package through different metrics.

Collaborators:
    - RPackageOrganizer: responsbible for providing information about the packages currently defined in the system.
    - SystemNavigation: used for searching for references in the system to the classes inside the package.

Public API and Key Messages:

    - afferentCouplings
    - efferentCouplings
    - instability

Some  examples of usage:

    (DMMStabilityMetrics onPackageNamed: 'Collections-Sequenceable') afferentCoupling. 

    ((DMMStabilityMetrics onPackageNamed: 'Collections-Sequenceable')
        addNonVolatilePackageNames: { #'Collections-Tests-Arrayed'})
        afferentCoupling.
