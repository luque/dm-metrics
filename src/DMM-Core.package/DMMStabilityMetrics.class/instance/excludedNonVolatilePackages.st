accessing
excludedNonVolatilePackages
	^ excludedNonVolatilePackages
		ifNil: [ excludedNonVolatilePackages := self class defaultExcludedSystemPackages ]