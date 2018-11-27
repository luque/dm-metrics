visualizations
gtInspectorPackageDependencyGraphIn: composite
	<gtInspectorPresentationOrder: 30>
	^ composite roassal2
		title: 'Package Dependencies';
		initializeView: [ self visualizePackageDependencies ]