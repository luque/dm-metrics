public - metrics
numberOfAbstractClasses
	"The number of abstract classes in the package. An abstract class is a class with at least one pure interface, and it cannot be instantiated."

	^ (self packageClasses select: [ :aClass |
		aClass methods anySatisfy: #isAbstract
		]) size