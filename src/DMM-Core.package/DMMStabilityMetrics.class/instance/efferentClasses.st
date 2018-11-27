public - relationships
efferentClasses
	"the classes inside the package that depend on classes outside the package"

	^ self efferentAssocs collect: #key as: Set