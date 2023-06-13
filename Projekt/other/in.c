#pragma distribute(enable)
#include <math.h>
#define size_l 100
#define size_h 10000
#define SIZE 1000

void func1(float *A, float* B, float K, int n) {
  for (int i = 0; i < n; ++i)
    A[i] *= B[i] + K;
}


void func2(double * a, double * b)
{
	int i;
	double *x = (double*)__builtin_assume_aligned(a, 16);
	double *y = (double*)__builtin_assume_aligned(b, 16);
	for (i = 0; i < SIZE; i++) {
		if (y[i] > x[i]) x[i] = y[i];
	}
}


// opearcje logiczne - wektoryzowalne
#define size 100
void func3( int a[size], int b[size], int c[size]) {
  int i;
  for ( i = 0; i < size; i++) c[i] = a[i] & b[i]; // wektoryzowalna
  for ( i = 0; i < size; i++) c[i] = a[i] | b[i]; // wektoryzowalna
  for ( i = 0; i < size; i++) c[i] = a[i] << b[i]; // wektoryzowalna
  for ( i = 0; i < size; i++) c[i] = a[i] >> b[i]; // wektoryzowalna
  for ( i = 0; i < size; i++) c[i] = ~a[i] + ~b[i]; // wektoryzowalna
}

void func4(int a1, int a2, int b1, int b2, int *A) { // wektoryzacja z SLP jesli operacje sa niezalezne ( moga czytac z jednego miejsca )
  A[0] = a1*(a1 + b1);
  A[1] = a2*(a2 + b2);
  A[2] = a1*(a1 + b1);
  A[3] = a2*(a2 + b2);
}

void func5(float* a, float* b, float* c, int n) { // zwektoryzowana 
    int i;
    for (i = 0; i < n; i += 4) {
        float sum = 0.0f;
        sum += a[i]*b[i];
        sum += a[i+1]*b[i+1];
        sum += a[i+2]*b[i+2];
        sum += a[i+3]*b[i+3];
        c[i] = sum;
    }
}

//sumowanie z wykorzystaniem SLP
void func6(float* a, float* b, float* c, int n) { // zwektoryzowana
    int i;
    for (i = 0; i < n; i += 4) {
        float sum1 = 0.0f, sum2 = 0.0f, sum3 = 0.0f, sum4 = 0.0f;
        sum1 += a[i] * b[i];
        sum2 += a[i + 1] * b[i + 1];
        sum3 += a[i + 2] * b[i + 2];
        sum4 += a[i + 3] * b[i + 3];
        c[i] = sum1;
        c[i + 1] = sum2;
        c[i + 2] = sum3;
        c[i + 3] = sum4;
    }
}

void func7( double* a, double* b) { // wykorzystanie instrukcji werktorowych, gdzie  ## xmm0 = mem[0],zero - jedna wartosc w wektorze 
    for ( int i = 0; i < 10; i++ )
      *a++ = *++b;
}