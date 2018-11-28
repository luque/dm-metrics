actions
actions
	^ super actions
		copyWith:
			(RePropertyAction new
				icon: #smallWindow asIcon;
				description: 'Open dependency graph';
				action: [ :crit :package | self openDependencyGraphOn: package ];
				yourself)