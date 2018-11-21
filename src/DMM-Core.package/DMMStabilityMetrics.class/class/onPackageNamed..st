instance creation
onPackageNamed: aString
	^ self onPackage: (RPackageOrganizer default packageNamed: aString)