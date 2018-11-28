accessing
critiqueFor: aPackageMetrics about: dependentPackageMetrics
	^ (DMMStableDependencyPrincipleCritique withAnchor: (self anchorFor: aPackageMetrics package) by: self)
		dependentPackage: dependentPackageMetrics package;
		fromInstability: (aPackageMetrics instability round: 3);
		toInstability: (dependentPackageMetrics instability round: 3
		)