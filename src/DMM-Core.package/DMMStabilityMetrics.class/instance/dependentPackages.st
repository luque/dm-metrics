public - relationships
dependentPackages
	"the packages that depend on classes within the package"

	^ self dependentClasses collect: #package as: Set