all: build

.PHONY: build test

build:
	dylan-compiler -build calvino

test:
	dylan-compiler -build calvino-test-suite-app
	_build/bin/calvino-test-suite-app

glfw-simple:
	dylan-compiler -build examples-glfw-simple
	_build/bin/glfw-simple

glfw-gears:
	dylan-compiler -build examples-glfw-gears
	_build/bin/glfw-gears

clean:
	rm -rf _build/bin/calvino*
	rm -rf _build/lib/*calvino*
	rm -rf _build/build/calvino*
