public - relationships
efferentClassesToward: outsidePackage
	"the efferent classes in this package depending on classes in the specified outside package"

	^ (self efferentAssocsToward: outsidePackage) collect: #key as: Set