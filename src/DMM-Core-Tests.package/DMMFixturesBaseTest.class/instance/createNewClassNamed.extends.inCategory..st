setup - fixtures
createNewClassNamed: aName extends: aClass inCategory: cat
	| cls |
	cls := aClass
		subclass: aName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: cat.
	^ cls