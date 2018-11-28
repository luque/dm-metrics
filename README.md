# DMMetrics

[![Build Status](https://travis-ci.org/luque/dm-metrics.svg?branch=master)](https://travis-ci.org/luque/dm-metrics)
[![Coverage Status](https://coveralls.io/repos/github/luque/dm-metrics/badge.svg?branch=master)](https://coveralls.io/github/luque/dm-metrics?branch=master)

DMMetrics is a library to compute [Robert C. Martin](https://en.wikipedia.org/wiki/Robert_C._Martin)'s dependency management metrics for packages in [Pharo](https://pharo.org/).

DMMetrics is written and supported by Rafael Luque and other developers at [OSOCO](https://osoco.es).

## Description

DMMetrics computes the following metrics for your Smalltalk packages:

* Stability metrics:
** Afferent Couplings (Ca): The number of classes outside a given package that depend on classes within that package.
** Efferent Couplings (Ce): The number of classes inside a given package that depend on classes outside that package.
** Instability (I): ![equation](http://www.sciweavers.org/tex2img.php?eq=I%20%3D%20%20%5Cfrac%7BC_%7Be%7D%7D%7BC_%7Ba%7D%20%20%2B%20C_%7Be%7D%7D%20%20%20%20&bc=White&fc=Black&im=png&fs=12&ff=arev&edit=0)

* Abstraction metrics:
** Number of classes (Nc): The number of classes in the package.
** Number of abstract classes (Na): The number of abstract classes in the package. An abstract class is a class with at least one abstract method.
** Abstractness (A): ![equation](http://www.sciweavers.org/tex2img.php?eq=A%20%3D%20%20%5Cfrac%7BN_%7Ba%7D%7D%7BN_%7Bc%7D%20%7D%20%20%20%20&bc=White&fc=Black&im=png&fs=12&ff=arev&edit=0)

* The Main Sequence:
** Distance to the main sequence (D): ![equation](http://www.sciweavers.org/tex2img.php?eq=A%20%3D%20%20%5Cfrac%7B%20%7C%20A%20%2B%20I%20-1%20%7C%20%7D%7B%20%5Csqrt%7B2%7D%20%20%7D%20%20%20%20&bc=White&fc=Black&im=png&fs=12&ff=arev&edit=0)
** Normalized distance to the main sequence (D'): ![equation](http://www.sciweavers.org/tex2img.php?eq=%20D%27%20%20%3D%20%20%7C%20A%20%2B%20I%20-1%20%7C&bc=White&fc=Black&im=png&fs=12&ff=arev&edit=0)

## Install DMMetrics

To install DMMetrics on your Pharo image you can just execute the following script:

```Smalltalk
    Metacello new
    	githubUser: 'luque' project: 'dm-metrics' commitish: 'master' path: 'src';
    	baseline: 'DMMetrics';
    	load
```

To add DMMetrics to your own project's baseline just add this:

```Smalltalk
    spec
    	baseline: 'DMMetrics'
    	with: [ spec repository: 'github://luque/dm-metrics:master/src' ]
```

Note that you can replace the #master by another branch as #development or a tag.

## Getting started

To compute the dependency metrics for a collection of packages you can execute the following in a Playground:

```
packages := RPackageOrganizer default packages select: [:p | 'FileSystem*' match: p name].
(DMMPackageGroupVisualizations onPackages: packages) build open
```

