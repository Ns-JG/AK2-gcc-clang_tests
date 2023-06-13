all:
	clang -std=c17 -S -o out.s in.c -O2 -mmmx -mavx2 -Rpass=loop-vectorize -Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize 
