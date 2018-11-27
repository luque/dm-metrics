public - relationships
efferentAssocs
	"Associations from the classes inside the package that depend on classes outside the package"

^ efferentAssocs ifNil: [  
	efferentAssocs := OrderedCollection new.
	self package definedClasses
		inject: efferentAssocs
		into: [ :assocs :aClassInPackage | 
			assocs
				addAll:
					((self dependentClassesFor: aClassInPackage excluding: self excludedPackages)
						collect: [ :dependentClass | aClassInPackage -> dependentClass ]);
				yourself ].
	]