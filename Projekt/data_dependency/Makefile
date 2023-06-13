all:
	clang -std=c17 -S -o out.s in.c -O3 -mavx2 -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize 
