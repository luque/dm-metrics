*DMM-Visualizations
gtInspectorPackageDependencyGraphIn: composite
	<gtInspectorPresentationOrder: 60>
	| b lb packagesMetrics relatedPackages relatedMetrics relatedPackagesMetrics |
	^ composite roassal2
		title: 'Dependency Metrics Graph';
		initializeView: [ relatedPackages := (self dependentPackages , self afferentPackages) flattened asOrderedCollection.
			relatedPackagesMetrics := DMMMainSequenceMetrics onPackages: relatedPackages.
			b := RTMondrian new.
			b shape box withTextAbove: #yourself.
			b
				nodes:
					(relatedPackagesMetrics
						add: self;
						yourself).
			"			b interaction highlightEdges: [ :m | m dependentPackages collect: #key ]."
			"			packagesElements := b
				nodes: packageMetrics
				forEach: [ :p | 
					b nodes: p definedClasses.
					b interaction showEdge
						connectToAll: #dependentClasses;
						colorElement: [ :edge | edge to trachelShape color ].
					b shape box
						width: 3;
						height: 2.

					b shape line color: Color gray trans.
					b edges connectToAll: #dependentClasses.
					b layout
						force;
						ifNotConnectedThen: RTGridLayout new ]."

			"	packagesElements @ (RTHighlightable new 
								shouldHighlightEdges; 
								edgeColor: Color red; 
								getConnectedEdgesBlock: [ :anEl | 
									anEl connectedEdges
									])."

			"	colorMapping := b normalizer 
		objects: self elements;
		distinctColorUsing: #role colorPalette: (RTColorPalette diverging colors: 7 scheme: 'Spectral')."
			b layout circle.
			"			b shape lineDualWidth
				withShorterDistanceAttachPoint;
				color: Color blue trans;
				widthFrom: [ :anEdge | anEdge from model numberOfDependenciesToward: anEdge to model ];
				widthTo: [ :anEdge | anEdge to model numberOfDependenciesToward: anEdge from model ]."
			b edges
				connectToAll: [ :pm | 
					pm = self
						ifTrue: [ pm afferentPackages
								add: pm dependentPackages ;
								yourself ]
						ifFalse: [ #() ] ].
			b layout weightedCircle.
			b build.
			lb := RTLegendBuilder new.
			lb onDemand.
			lb view: b view.
			lb addText: 'Visualize packages and their inner dependencies'.
			lb addText: 'Encapsulating box = package'.
			lb addText: 'Inner box = class'.
			lb addText: 'Color of small box = role'.
			lb addText: 'Height inner box = #incoming dependencies'.
			lb addText: 'Width inner box = #outgoing dependencies'.
			lb addText: 'Edges = dependencies scoped in the package'.
			"	colorMapping do: [ :assoc |
		lb addColor: assoc value text: assoc key asString ]."
			lb build.
			b view @ RTZoomableView
			"	b view @ RTThresholdFilter." ]