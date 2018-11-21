setup
tearDown
	self fixturePackages
		do: [ :aPackage | 
			aPackage definedClasses do: [ :aClass | self deleteClass: aClass ].
			RPackageOrganizer default unregisterPackage: aPackage ]