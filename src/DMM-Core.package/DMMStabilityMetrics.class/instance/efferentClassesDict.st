public - relationships
efferentClassesDict
	^ self efferentAssocs
		inject: Dictionary new
		into: [ :dict :assoc | 
			dict
				at: assoc key
					ifPresent: [ :efferentClasses | efferentClasses add: assoc value ]
					ifAbsentPut: [ {assoc value} asOrderedCollection ];
				yourself ]
	