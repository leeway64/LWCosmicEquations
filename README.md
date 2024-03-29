# LWCosmicEquations

![Photo of Carina Nebula, taken by James Webb Space Telescope](doc/james-webb-space-telescope-carina-nebula.jpg)

Photo credit: [James Webb Space Telescope](https://webb.nasa.gov/) ([photo source](https://www.flickr.com/photos/nasawebbtelescope/52259221868/in/album-72177720300469752/))

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/leeway64/LWCosmicEquations)

This project contains 3 programs, one for calculating a civilization's Kardashev rating
(`kardashev-scale`), one that calculates the Drake Equation user-entered values (`drake-equation`),
and one that converts various astronomy distance units to gigameters
(`astronomy_distance_units_converter`).

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
jai "lib/main.jai" -output_path "../bin/" -exe astro_dist_units_converter -release
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
```text
$ bin/astro_dist_units_converter -AU 64

64 AU in gigameters: 9574.264
Units have been converted successfully!

$ bin/astro_dist_units_converter -pc 48.5

48.5 parsecs in gigameters: 1496553652.636
Units have been converted successfully!

$ bin/astro_dist_units_converter -ly 10.98

10.98 light-years in gigameters: 103878822.222
Units have been converted successfully!

$ bin/astro_dist_units_converter --help

Astronomy Distance Units Converter
Usage: main [option]
Options and arguments
         --help or -h: Print the help message
         -AU [value]: Convert AUs to gigameters
         -pc [value]: Convert parsecs to gigameters
         -ly [value]: Convert light-years to gigameters
```


## Unit tests
To build and run unit tests, run the following commands:
```bash
make build-all-tests
make run-all-tests

jai "test/astronomy_distance_units_converter_tests.jai" -output_path "../bin/" -exe tests -release
bin/tests
```


## Extra Details on Docker
- To inspect the Docker image's labels, run `docker image inspect --format='' drake-equation`
- Run `docker ps -a` to list all containers.
- Run `docker system df` to show disk usage of various Docker objects.

To learn more about Docker and Kubernetes, refer to this [page](doc/docker-kubernetes-info.asciidoc).


## Additional Resources
In addition to [this page](doc/README.md), check out
[this Kurzgesagt video](https://www.youtube.com/watch?v=rhFK5_Nx9xY) about the Kardashev scale.

The Wikipedia pages for the [Kardashev Scale](https://en.wikipedia.org/wiki/Kardashev_scale) and
the [Drake Equation](https://en.wikipedia.org/wiki/Drake_equation) also serve as interesting
reading and introductions into those topics.

To learn more about astronomical units (AU), parsecs, and light-years, generate a supplemental PDF by
running the following:
```bash
make generate-latex
```
This will create the PDF in the [`doc` directory](doc).


## License
The code for this project (i.e., the code written in C, Bash, Jai and the code in the Makefile and
Dockerfile) is licensed under the [MIT License](LICENSE-CODE.txt).

Certain pieces of documentation for this project (i.e., [Astronomy Distance Units Explained](doc/astronomy-units.tex),
[Docker and Kubernetes: How they fit together](doc/docker-kubernetes-info.asciidoc),
[Additional Information on the Kardashev Scale, the Drake Equation, and the Fermi Paradox](doc/README.md))
is licensed under the [Creative Commons Attribution 4.0 International license (CC-BY-4.0)](LICENSE.txt).


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

In addition to the previous sofware, this project also uses `texlive`, `texinfo`,
`texlive-fonts-recommended`, and `texlive-fonts-extra` to convert LaTeX to PDF. For Ubuntu-based
systems, refer to this [page](https://linuxhint.com/convert-tex-latex-file-to-pdf/) for how to
install these packages, along with how to convert a LaTeX document to a PDF.

To learn more about how to use LaTeX in general, [this page](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)
provides many useful examples.
