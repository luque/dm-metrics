actions
tinyHint
	^ self sourceAnchor sourceEntity name , '(I=' , self fromInstability asString , ') -> ' , self dependentPackage name , '(I=' , self toInstability asString , ')'