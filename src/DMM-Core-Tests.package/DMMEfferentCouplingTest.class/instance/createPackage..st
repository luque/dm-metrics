setup - fixtures
createPackage: aString
	| package |
	package := RPackageOrganizer default registerPackageNamed: self class category , '-Fixtures-' , aString.
	self fixturePackages add: package.
	^ package 