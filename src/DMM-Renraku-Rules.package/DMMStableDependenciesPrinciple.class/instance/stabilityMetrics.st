accessing
stabilityMetrics
	^ StabilityMetrics ifNil: [  DMMStabilityMetrics  ]