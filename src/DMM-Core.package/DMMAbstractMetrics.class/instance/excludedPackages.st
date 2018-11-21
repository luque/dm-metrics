accessing
excludedPackages
	^ {self excludedNonVolatilePackages .
	self package packageName} flattened