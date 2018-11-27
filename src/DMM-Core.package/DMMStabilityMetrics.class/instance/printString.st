private - util
printString
	^ self package packageName , '(I=' , (self instability round: 3) asString , ')'