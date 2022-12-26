# LWCosmicEquations

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/leeway64/LWCosmicEquations)

This project contains 2 programs, one for calculating a civilization's Kardashev rating
(`kardashev-scale`), and one that calculates the Drake Equation from some user-entered values
(`drake-equation`).

Refer to [this document](doc/README.md) for more information on the Kardashev Scale and the Drake
Equation.


## Installation
```bash
git clone https://github.com/leeway64/LWCosmicEquations.git
cd LWCosmicEquations
```
You will also have to install mr (myrepos). Go to myrepos' install page to learn how to install mr
on your system.


## Building

### Building kardashev-scale

```bash
make build-kardashev-scale
```

### Building drake-equation
```bash
make build-drake-equation
```


## Usage

### kardashev-scale usage
```bash
make run-kardashev-scale
```

### drake-equation usage
```bash
make run-drake-equation
```

## Unit Tests

```bash
make build-all-tests
make run-all-tests
```


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
