# Remember to prefix every recipe with TABS, not spaces


# Need to link math library with -lm
build-kardashev-scale:
	gcc lib/kardashev-scale.c lib/main.c -lm -o bin/kardashev-scale

run-kardashev-scale:
	bin/kardashev-scale 1000000

build-drake-equation:
	docker build -t drake-equation

run-drake-equation:
	docker run drake-equation

# Need to enable double precision in Unity
build-all-tests:
	gcc lib/kardashev-scale.c Unity/src/unity.c test/test-suite.c -lm -D UNITY_INCLUDE_DOUBLE -o bin/test-suite

run-all-tests:
	bin/test-suite
