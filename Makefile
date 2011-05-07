test: lib/andbug/jdwp.so
	python setup.py test

lib/andbug/jdwp.so: lib/jdwp/jdwp.c
	python setup.py build_ext -i

lib/jdwp/jdwp.c: lib/jdwp/jdwp.pyx
	pyrexc lib/jdwp/jdwp.pyx

clean:
	rm -rf build */*/*.o */*/*.so */*/*.pyc
