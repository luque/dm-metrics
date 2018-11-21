accessing
addNonVolatilePackageNames: aCollection
	excludedNonVolatilePackages
		ifNil: [ excludedNonVolatilePackages := self class defaultExcludedSystemPackages ].
	excludedNonVolatilePackages addAll: aCollection