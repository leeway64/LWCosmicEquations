# LWCosmicEquations

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/leeway64/LWCosmicEquations)

This project contains 3 programs, one for calculating a civilization's Kardashev rating
(`kardashev-scale`), one that calculates the Drake Equation user-entered values (`drake-equation`),
and one that converts various astronomy distance units to gigameters `astronomy_distance_units_converter`.

Refer to [this document](doc/README.md) for more information on the Kardashev Scale and the Drake
Equation.


## Installation
```bash
git clone https://github.com/leeway64/LWCosmicEquations.git
cd LWCosmicEquations
mr checkout
mr update
```
`mr checkout` will clone all the necessary dependencies into the `LWCosmicEquations` directory. Go
to [myrepos' install page](https://myrepos.branchable.com/install/) to learn how to install mr on your system.

Although you don't have to run it immediately, you can continually run `mr update` to update all
the cloned dependencies from time to time.

If you clone a new dependency/repository, you can run `mr register <repository-name>` to register
that directory into the [.mrconfig file](.mrconfig).


## Building

### Building kardashev-scale

```bash
make build-kardashev-scale
```

### Building drake-equation
```bash
make build-drake-equation
```

### Building astronomy_distance_units_converter
```bash
jai "lib\main.jai" -output_path "..\bin\" -exe astro_dist_units_converter
```


## Usage

### kardashev-scale usage
```bash
$ make run-kardashev-scale power=1000000000000000000000000000000

Civilization's Kardashev rating: 2.400000
```

If the incorrect number of arguments are given, then:
```bash
$ make run-kardashev-scale

Incorrect number of arguments. Enter only the power of the civilization in watts.
```

If the power is below 10^6 watts, then:
```bash
$ make run-kardashev-scale power=128

Civilization's power (watts) is too low. Enter at least 10^6 watts.
```

### drake-equation usage
```bash
$ make run-drake-equation R*=200000 fp=0.25 ne=0.125 fl=0.5 fi=0.4 fc=0.2 L=64

Drake Equation:
	N = R* * fp * ne * fl * fi * fc * L

Number of intelligent civilizations in the galaxy:
	N = 16000.00000000
```


If the incorrect number of parameters are given, then:
```bash
$ make run-drake-equation

Incorrect number of arguments. 7 arguments are necessary for the Drake Equation:
Drake Equation:
	N = R* * fp * ne * fl * fi * fc * L

	N: Number of intelligent civilizations in the galaxy
	R*: Average rate of star formation
	fp: Fraction of those stars with planets
	ne: Average number of planets that can support life for every star that has planets
	fl: Percentage of planets that actually develop life
	fi: Percentage of planets that actually develop civilizations
	fc: Fraction of civilizations that release detectable signals into space
	L: Length of time which civilizations release detectable signals into space
Refer to the Drake Equation's Wikipedia page for more information: https://en.wikipedia.org/wiki/Drake_equation#Equation
```

### astronomy_distance_units_converter usage
```bash
$ bin/astro_dist_units_converter.exe -AU 64
```


## Unit Tests

```bash
make build-all-tests
jai
make run-all-tests
```


# Extra Details on Docker
- To inspect the docker image's labels, run `docker image inspect --format='' drake-equation`
- Run `docker ps -a` to list all containers.
- Run `docker system df` to show disk usage of various docker objects.


## Additional Resources
In addition to [this page](doc/README.md), check out
[this Kurzgesagt video](https://www.youtube.com/watch?v=rhFK5_Nx9xY) about the Kardashev scale.

The Wikipedia pages for the [Kardashev Scale](https://en.wikipedia.org/wiki/Kardashev_scale) and
the [Drake Equation](https://en.wikipedia.org/wiki/Drake_equation) also serve as interesting
reading and introductions into those topics.


## Third-Party Software
- [Docker](https://www.docker.com/): Application containerization
- [myrepos](https://myrepos.branchable.com/): Tool to manage multiple version control repositories simultaneously
- [BATS](https://github.com/bats-core/bats-core): Bash Automated Testing System. Unit testing
library for Bash.
- [Unity](https://github.com/ThrowTheSwitch/Unity) (MIT License): Unit testing framework for C.
- [sds](https://github.com/antirez/sds) (BSD 2-Clause "Simplified" License): Simple dynamic
strings. String library for C.
- [c-hashmap](https://github.com/Mashpoe/c-hashmap) (MIT License): C hash map library
- [jai-ryu](https://github.com/ostef/jai-ryu) (Apache-2.0, BSL-1.0): Float to string (and vice versa)
conversion algorithms for Jai.
