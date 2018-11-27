public - relationships
afferentClassesDict
	^ self afferentAssocs
		inject: Dictionary new
		into: [ :dict :assoc | 
			dict
				at: assoc value
				ifPresent: [ :afferentClasses | afferentClasses add: assoc key ]
				ifAbsentPut: [ {assoc key} asOrderedCollection ]; yourself ]