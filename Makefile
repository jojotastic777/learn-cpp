build_debug: clean_debug
	clang++ -std=c++17 -O0 -Weverything -o debug.out ${wildcard *.cpp}

build_prod: clean_prod
	clang++ -std=c++17 -O3 -Weverything -o prod.out ${wildcard *.cpp}

clean: clean_debug clean_prod

clean_debug:
	rm -f debug

clean_prod:
	rm -f prod