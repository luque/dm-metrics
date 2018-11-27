*DMM-Visualizations
gtInspectorDMMetricsIn: composite
	<gtInspectorPresentationOrder: 50>
	| stability abstractness mainSequence |
	stability := DMMStabilityMetrics onPackage: self.
	abstractness := DMMAbstractnessMetrics onPackage: self.
	mainSequence := DMMMainSequenceMetrics onPackage: self.
	^ composite table
		title: 'DM Metrics';
		display: [ {('Afferent Coupling (Ca)' -> stability afferentCoupling).
			('Efferent Coupling (Ce)' -> stability efferentCoupling).
			('Instability (I)' -> stability instability).
			('Abstractness (A)' -> abstractness abstractness).
			('Normalized Distance from the Main Sequence (D'')' -> mainSequence normalizedMainSequenceDistance)} ];
		column: 'Metric' evaluated: #key;
		column: 'Value' evaluated: #value;
		send: #value