private - util
referingClassesFor: aClass excluding: aCollection
	^ ((SystemNavigation default allReferencesTo: aClass binding) collect: #methodClass as: Set) , aClass allSubclasses
		select: [ :aReferingClass | (aCollection includes: aReferingClass category) not ]
		