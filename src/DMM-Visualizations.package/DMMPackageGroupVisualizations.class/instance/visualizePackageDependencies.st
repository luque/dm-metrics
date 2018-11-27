visualizations
visualizePackageDependencies
	| b n packageElements lb |
	b := RTMondrian new.
	n := RTMultiLinearColor new.
	n
		colors:
			{Color red.
			Color green}.
	n command: [ :p | self stabilityMetrics at: p ifPresent: [ :m | 1 - m instability ] ifAbsent: [ 0 ] ].
	b shape rectangle
		withTextAbove: [ :p | self stabilityMetrics at: p ifPresent: [ :m | self textForPackage: p ] ifAbsent: [ p packageName ] ];
		if: [ :p | (self stabilityMetrics includesKey: p) not ] fillColor: Color lightGray;
		if: [ :p | self stabilityMetrics includesKey: p ] color: n;
		borderColor: [ :p | self stabilityMetrics at: p ifPresent: [ :m | Color black ] ifAbsent: [ Color lightGray ] ].
	packageElements := b
		nodes: self packagesWithDependencies
		forEach: [ :p | 
			b shape rectangle
				width: [ :c | self stabilityMetrics at: p package ifPresent: [ :m | (m efferentCouplingPerClass: c) * 10 + 10 ] ifAbsent: [ 5 ] ];
				height: [ :c | self stabilityMetrics at: p package ifPresent: [ :m | (m afferentCouplingPerClass: c) * 10 + 10 ] ifAbsent: [ 5 ] ].
			b nodes: p package definedClasses.
			b shape line color: Color lightOrange.
			b edges connectToAll: #dependentClasses.
			b layout
				sugiyama;
				ifNotConnectedThen: RTGridLayout new ].
	b shape
		arrowedLine;
		if: [ :assoc | 
			((self stabilityMetrics includesKey: assoc key) and: [ self stabilityMetrics includesKey: assoc value ])
				ifTrue: [ (self stabilityMetrics at: assoc key) instability < (self stabilityMetrics at: assoc value) instability ]
				ifFalse: [ false ] ]
			color: Color red.
	b edges useAssociations: self packageAssociations.
	b shape
		arrowedBezier;
		color: Color blue trans.
	b edges
		objects: (self packagesWithDependencies flatCollect: #definedClasses);
		connectToAll: [ :aClass | 
			self stabilityMetrics
				at: aClass package
				ifPresent: [ :metrics | metrics efferentClassesDict at: aClass ifAbsent: [ #() ] ]
				ifAbsent: [ #() ] ];
		connectFromAll: [ :aClass | 
			self stabilityMetrics
				at: aClass package
				ifPresent: [ :metrics | metrics afferentClassesDict at: aClass ifAbsent: [ #() ] ]
				ifAbsent: [ #() ] ].
	b layout tree.
	b build.
	lb := RTLegendBuilder new.
	lb view: b view.
	lb addRectanglePolymetricWidth: 'number of efferent couplings' height: 'number of afferent couplings' box: ''.
	lb addColorFadingFrom: Color green to: Color red text: 'Stability of the package'.
	lb addLineColor: Color lightGray text: 'package relationships'.
	lb addLineColor: Color blue text: 'class couplings across packages'.
	lb addLineColor: Color lightOrange text: 'class couplings inside package'.
	lb build.
	^ b view