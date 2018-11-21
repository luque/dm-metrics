private - util
dependentClassesFor: aClass exluding: aCollection
	^ aClass dependentClasses select: [ :aDependentClass | (aCollection includes: aDependentClass category) not ]