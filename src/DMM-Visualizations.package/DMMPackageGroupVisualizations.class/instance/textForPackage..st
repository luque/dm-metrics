visualizations
textForPackage: aPackage
	^ aPackage name , '(A=' , ((self abstractnessMetrics at: aPackage) abstractness round: 3) asString , ', I='
		, ((self stabilityMetrics at: aPackage) instability round: 3) asString , ', D''='
		, ((self mainSequenceMetrics at: aPackage) normalizedMainSequenceDistance round: 3) asString , ')'