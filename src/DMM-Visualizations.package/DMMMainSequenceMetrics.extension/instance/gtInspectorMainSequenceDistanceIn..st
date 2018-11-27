*DMM-Visualizations
gtInspectorMainSequenceDistanceIn: composite
	<gtInspectorPresentationOrder: 60>
	| lb packageMetrics lbOnDemand points view |
	^ composite roassal2
		title: 'Distance to Main Sequence';
		initializeView: [ | ds mainSequenceLine |
			view := RTGrapher new.
			packageMetrics := DMMMainSequenceMetrics onPackage: self.
			points := { packageMetrics }.
			view
				extent: 300 @ 300;
				maxX: 1;
				maxY: 1.
			ds := RTData new.
			ds dotShape ellipse
				size: 15;
				color: Color blue.
			ds
				points: points;
				x: #instability;
				y: #abstractness.
			ds interaction popupText: [ :metrics | 'Package ' , metrics package name ].
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
			lb addText: 'D'' = |A + I - 1| = ' , (packageMetrics normalizedMainSequenceDistance round: 3) asString.
			lb build.
			lbOnDemand := RTLegendBuilder new.
			lbOnDemand onDemand: '+ Metrics Info'.
			lbOnDemand view: view view.
			lbOnDemand
				addText: 'Ce = ' , (packageMetrics efferentCoupling round: 3) asString;
				addText: 'Ca = ' , (packageMetrics afferentCoupling round: 3) asString;
				addText: 'I = ' , (packageMetrics instability round: 3) asString;
				addText: '# Clases = ' , packageMetrics numberOfClasses asString;
				addText: '# Abstract Clases = ' , packageMetrics numberOfAbstractClasses asString;
				addText: 'A = ' , (packageMetrics abstractness round: 3) asString;
				addText: 'D'' = ' , (packageMetrics normalizedMainSequenceDistance round: 3) asString.
			lbOnDemand build ]