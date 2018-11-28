instance creation
onPackages: aCollection
	^ self new
		addAllPackages: aCollection;
		yourself