visualizations
visualizeInstabilityAbstractnessGraph
	| ds mainSequenceLine lb graph |
	graph := RTGrapher new.
	graph
		extent: 300 @ 300;
		maxX: 1;
		maxY: 1.
	ds := RTData new.
	ds dotShape ellipse
		size: 15;
		color: Color blue trans.
	ds
		points: self packages;
		x: [ :p | (self stabilityMetrics at: p) instability round: 3 ];
		y: [ :p | (self abstractnessMetrics at: p) abstractness round: 3 ].
	ds interaction
		popupText: [ :package | package name , ': D'' = ' , ((self mainSequenceMetrics at: package) normalizedMainSequenceDistance round: 3) asString ].
	graph add: ds.
	mainSequenceLine := DMMMainSequenceLineDecorator new.
	mainSequenceLine shape line color: (Color red alpha: 0.3).
	graph addDecorator: mainSequenceLine.
	graph axisX
		numberOfTicks: 4;
		title: 'Instability (I)'.
	graph axisY
		numberOfTicks: 4;
		title: 'Abstractness (A)'.
	graph build.
	lb := RTLegendBuilder new.
	lb view: graph view.
	lb addText: 'Instability/Abstractness Graph'.
	lb build.
	^ graph view