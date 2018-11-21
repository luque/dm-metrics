public - metrics
efferentCoupling
	"the number of classes inside the package that depend on classes outside the package"

	| classesWithOutsideDependencies |
	classesWithOutsideDependencies := self package definedClasses
		select: [ :aClassInPackage | (self dependentClassesFor: aClassInPackage exluding: (self excludedPackages)) isNotEmpty ].
	^ classesWithOutsideDependencies size