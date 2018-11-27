public - relationships
afferentAssocsFrom: outsidePackage
	"the afferent associations between classes from the specified outside package that depend on classes within this package"

	^ self afferentAssocs select: [ :assoc | assoc key package = outsidePackage ]