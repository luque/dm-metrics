public - relationships
afferentCouplingFrom: outsidePackage
	"the afferent coupling taking into account only the specified outside package"

	^ (self afferentClassesFrom: outsidePackage) size