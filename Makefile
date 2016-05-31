all:
	clang -framework Foundation -Wall demo.m -o demo
clean:
	rm -f demo
