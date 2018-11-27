building
build
	packageAssociations := OrderedCollection new.
	self stabilityMetrics
		inject: packageAssociations
		into: [ :assocs :metrics | 
			assocs
				addAll: metrics afferentPackageAssocs;
				addAll: metrics efferentPackageAssocs;
				yourself ]