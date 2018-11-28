adding
addPackageNamed: aPackageName
	^ self addPackage: (RPackageOrganizer default packageNamed: aPackageName)