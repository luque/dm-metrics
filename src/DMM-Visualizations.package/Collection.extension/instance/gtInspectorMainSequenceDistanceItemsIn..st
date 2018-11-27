*DMM-Visualizations
gtInspectorMainSequenceDistanceItemsIn: composite
	<gtInspectorPresentationOrder: 10>
	| view packagesMetrics lb |
	^ composite roassal2
		title: 'Distances to Main Sequence';
		initializeView: [ | ds mainSequenceLine |
			view := RTGrapher new.
			packagesMetrics := self collect: [ :aPackage | DMMMainSequenceMetrics onPackage: aPackage ].
			view
				extent: 300 @ 300;
				maxX: 1;
				maxY: 1.
			ds := RTData new.
			ds dotShape ellipse
				size: 15;
				color: (Color blue trans).
			ds
				points: packagesMetrics;
				x: #instability;
				y: #abstractness.
			ds interaction
				popupText: [ :metrics | metrics package name , ': D'' = ' , (metrics normalizedMainSequenceDistance round: 3) asString ].
			view add: ds.
			mainSequenceLine := DMMMainSequenceLineDecorator new.
			mainSequenceLine shape line color: (Color red alpha: 0.3).
			view addDecorator: mainSequenceLine.
			view axisX
				numberOfTicks: 4;
				title: 'Instability (I)'.
			view axisY
				numberOfTicks: 4;
				title: 'Abstractness (A)'.
			view build.
			lb := RTLegendBuilder new.
			lb view: view view.
			lb addText: 'Instability/Abstractness Graph'.
			lb build ];
		when: [ self allSatisfy: [ :element | element isKindOf: RPackage ] ]