public - metrics
abstractness
	"The Abstractness ranges from 0 to 1. 
	Zero implies that the package has no abstract classes at all. 
	A value of 1 implies that the package contains nothing but abstract classes."

	self numberOfClasses = 0
		ifTrue: [ ^ 0	"I interpret that an empty package is something very concrete (?)" ]
		ifFalse: [ ^ (self numberOfAbstractClasses / self numberOfClasses) asFloat ]