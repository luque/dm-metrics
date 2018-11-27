public - relationships
afferentCouplingPerClass: aClass

	^ self afferentClassesDict at: aClass ifPresent: [ :afferentClasses | afferentClasses size ] ifAbsent: [ 0 ] 