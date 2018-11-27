public - relationships
efferentAssocsToward: outsidePackage
	"the efferent associations between classes depending on the specified outside package"

	^ self efferentAssocs select: [ :assoc |  assoc value package = outsidePackage ]