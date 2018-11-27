public - relationships
dependentClasses
	"the classes outside the package on which depend the classes inside the package"

	^ self efferentAssocs collect: #value as: Set