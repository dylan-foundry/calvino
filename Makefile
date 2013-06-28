all: build

.PHONY: build test

build:
	dylan-compiler -build calvino

test:
	dylan-compiler -build calvino-test-suite-app
	_build/bin/calvino-test-suite-app

clean:
	rm -rf _build/bin/calvino*
	rm -rf _build/lib/*calvino*
	rm -rf _build/build/calvino*
