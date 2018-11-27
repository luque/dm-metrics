public - relationships
efferentCouplingPerClass: aClass
	^ self efferentClassesDict at: aClass ifPresent: [ :efferentClasses | efferentClasses size ] ifAbsent: [ 0 ]