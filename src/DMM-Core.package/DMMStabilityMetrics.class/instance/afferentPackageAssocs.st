public - relationships
afferentPackageAssocs
	"Associations from the outside packages that depend on classes within the package to this package"

	
	^ self afferentAssocs collect: [ :assoc   | assoc key package -> assoc value package ]
	