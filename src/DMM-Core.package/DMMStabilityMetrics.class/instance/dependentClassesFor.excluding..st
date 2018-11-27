private - util
dependentClassesFor: aClass excluding: aCollection
	^ aClass dependentClasses asOrderedCollection select: [ :aDependentClass | (aCollection includes: aDependentClass category) not ]