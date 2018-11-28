actions
openDependencyGraphOn: aPackage
	^ ((DMMPackageGroupVisualizations onPackage: aPackage) addPackage: self dependentPackage) inspect