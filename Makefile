all:
	clang -framework Foundation -Weverything -Wno-objc-missing-property-synthesis hello.m -o hello
clean:
	rm -f hello
