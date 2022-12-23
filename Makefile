build-kardashev-scale:
	gcc src/kardashev-scale.c -o bin/kardashev-scale

run-kardashev-scale:
	

build-drake-equation:
	docker build -t drake-equation

run-drake-equation:
	docker run drake-equation

build-all-tests:
	gcc src/kardashev-scale.c Unity/src/unity.c test/test-suite.c -o test/test-suite

run-all-tests:

