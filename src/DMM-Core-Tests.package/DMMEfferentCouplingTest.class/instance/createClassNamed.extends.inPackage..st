setup - fixtures
createClassNamed: aName extends: aClass inPackage: p
	| cls |
	cls := self createNewClassNamed: aName extends: aClass inCategory: p categoryName.
	p addClassDefinition: cls.
	^ cls