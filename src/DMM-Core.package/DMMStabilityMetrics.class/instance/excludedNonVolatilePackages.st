accessing
excludedNonVolatilePackages
	^ excludedNonVolatilePackages ifNil: [ self class defaultExcludedSystemPackages  ]