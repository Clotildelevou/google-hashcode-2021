all:
	g++ -std=c++17 -o simulation src/*.cc

clean:
	rm -f $(OBJS) $(OUT)

debug: $(OUT)
	valgrind $(OUT)

valgrind: $(OUT)
	valgrind $(OUT)

valgrind_leakcheck: $(OUT)
	valgrind --leak-check=full $(OUT)

valgrind_extreme: $(OUT)
	valgrind --leak-check=full --show-leak-kinds=all --leak-resolution=high --track-origins=yes --vgdb=yes $(OUT)
