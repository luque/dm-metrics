I represent the kind of metrics related with the abstractness of a package as published by Robert C. Martin.

This is a measure of the abstractness of a package. Its value is simply the ratio of abstract classes in a package to the total number of classes in the package.

Responsabilities:
    - I know how measure the abstractness of a given package.

Collaborators:
    - RPackageOrganizer: responsbible for providing information about the packages currently defined in the system.
    - SystemNavigation: used for searching for references in the system to the classes inside the package.

Public API and Key Messages:

    - numberOfAbstractClasses
    - numberOfClasses
    - abstractness

Some  examples of usage:

    (DMMAbstractnessMetrics onPackageNamed: 'Collections-Abstract') abstractness. 

    (DMMAbstractnessMetrics onPackageNamed: 'Collections-Sequenceable') abstractness. 
