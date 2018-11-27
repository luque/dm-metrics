public - relationships
afferentClassesFrom: outsidePackage
	"the classes in the specified outside package that depend on classes within this package"

	^ (self afferentAssocsFrom: outsidePackage) collect: #key as: Set