adding
addAllPackages: aCollection
	^ aCollection do: [ :element | self addPackage: element ]