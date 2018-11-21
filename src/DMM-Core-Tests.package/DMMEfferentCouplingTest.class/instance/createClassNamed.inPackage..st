setup - fixtures
createClassNamed: aName inPackage: p
	| cls |
	cls := self createNewClassNamed: aName inCategory: p categoryName.
	p addClassDefinition: cls.
	^ cls