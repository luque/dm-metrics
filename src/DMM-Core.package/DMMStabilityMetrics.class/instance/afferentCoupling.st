public - metrics
afferentCoupling
	"the number of classes outside the package that depend on classes within the package"

	| outsideClassesReferingThisPackage |
	outsideClassesReferingThisPackage := self package definedClasses flatCollect: [ :aClass | self referingClassesFor: aClass excluding: self excludedPackages ] as: Set.
	^ outsideClassesReferingThisPackage size