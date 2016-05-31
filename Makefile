all:
	clang -framework Foundation -Weverything -Wno-objc-missing-property-synthesis demo.m -o demo
clean:
	rm -f demo
