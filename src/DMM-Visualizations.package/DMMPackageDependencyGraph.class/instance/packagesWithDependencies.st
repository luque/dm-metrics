accessing
packagesWithDependencies
	^ (packageAssociations collect: #key as: Set) , (packageAssociations collect: #value as: Set)