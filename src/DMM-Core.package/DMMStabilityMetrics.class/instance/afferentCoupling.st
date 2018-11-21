public api
afferentCoupling
	"the number of classes outside the package that depend on classes within the package"

	| allRefs |
	allRefs := SystemNavigation default allReferencesTo: self class binding.
	^ allRefs size