public - relationships
efferentPackageAssocs
	"Associations from the package to the outside pacakge containing dependant classes"


	^ self efferentAssocs collect: [ :assoc | assoc key package -> assoc value package ]