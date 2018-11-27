public - relationships
afferentClasses
	"the classes outside the package that depend on classes within the package"


	^ self afferentAssocs collect: #key as: Set