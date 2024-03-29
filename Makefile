# Remember to prefix every recipe with TABS, not spaces
SHELL := /usr/bin/env bash

# Need to link math library with -lm
build-kardashev-scale:
	gcc lib/kardashev-scale.c lib/main.c c-hashmap/map.c sds/sds.c -lm -o bin/kardashev-scale

# Get power as a command-line argument
run-kardashev-scale:
	bin/kardashev-scale $(power)

build-drake-equation:
	sudo docker build -t drake-equation .

run-drake-equation:
	sudo docker run --rm drake-equation $(R*) $(fp) $(ne) $(fl) $(fi) $(fc) $(L)

# Need to enable double precision in Unity
build-all-tests:
	echo "Building Kardashev Scale's test suite"
	gcc lib/kardashev-scale.c test/kardashev-scale-test-suite.c Unity/src/unity.c c-hashmap/map.c -lm -D UNITY_INCLUDE_DOUBLE -o bin/test-suite

run-all-tests:
	echo "Running Kardashev Scale's test suite"
	bin/test-suite
	echo "Running Drake Equation's test suite"
	./test/bats/bin/bats test/drake-equation-test-suite.bats

generate-latex:
	pdflatex --output-directory=doc doc/astronomy-units.tex
