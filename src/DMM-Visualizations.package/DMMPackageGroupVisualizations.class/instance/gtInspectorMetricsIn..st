visualizations
gtInspectorMetricsIn: composite


	<gtInspectorPresentationOrder: 10>
	| stability abstractness mainSequence |
	stability := DMMStabilityMetrics onPackage: self.
	abstractness := DMMAbstractnessMetrics onPackage: self.
	mainSequence := DMMMainSequenceMetrics onPackage: self.
	^ composite table
		title: 'DM Metrics';
		display: [ self packages ];
		when: [ self packages isNotEmpty ];
		column: 'Package' evaluated: [ :each | each name ];
		column: 'Afferent Couplings (Ca)' evaluated: [ :each | (self stabilityMetrics at: each) afferentCoupling ];
		column: 'Efferent Couplings (Ce)' evaluated: [ :each | (self stabilityMetrics at: each) efferentCoupling ];
		column: 'Instability (I)' evaluated: [ :each | (self stabilityMetrics at: each) instability round: 3 ];
		column: 'Abstractness (A)' evaluated: [ :each | (self abstractnessMetrics at: each) abstractness round: 3 ];
		column: 'Distance to main sequence (D'')'
			evaluated: [ :each | (self mainSequenceMetrics at: each) normalizedMainSequenceDistance round: 3 ]