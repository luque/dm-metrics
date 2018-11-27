accessing
build
	packageAssociations := OrderedCollection new.
	self packageMetrics
		inject: packageAssociations
		into: [ :assocs :metrics | 
			assocs
				addAll: metrics afferentPackageAssocs;
				addAll: metrics efferentPackageAssocs;
				yourself ].
	