running
check: aPackage forCritiquesDo: aCriticBlock
	"Check if there are package dependencies with greater instability than the own one"

	| packageMetrics dependentPackageMetrics |
	packageMetrics := self stabilityMetrics onPackage: aPackage.
	dependentPackageMetrics := packageMetrics dependentPackages collect: [ :p | self stabilityMetrics onPackage: p ].
	(dependentPackageMetrics select: [ :anotherPackageMetrics | anotherPackageMetrics instability > packageMetrics instability ])
		do: [ :aDependentPackageMetrics | aCriticBlock cull: (self critiqueFor: packageMetrics about: aDependentPackageMetrics ) ]