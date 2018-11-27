public - relationships
afferentAssocs
	"Associations from the classes outside the package that depend on classes within the package to the dependent classes inside the package"

	^ afferentAssocs ifNil: [  
	afferentAssocs := OrderedCollection new.
	self package definedClasses
		inject: afferentAssocs
		into: [ :assocs :aClassInPackage | 
			assocs
				addAll:
					((self referingClassesFor: aClassInPackage excluding: self excludedPackages)
						collect: [ :afferentClass | afferentClass -> aClassInPackage ]);
				yourself ].
	]