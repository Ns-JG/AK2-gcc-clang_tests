all:
	clang -S -o out.s in.c -O3 -mavx2 -std=c17 -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize 
