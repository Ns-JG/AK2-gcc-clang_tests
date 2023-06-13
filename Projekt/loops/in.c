#include <math.h>
#define size 1000

unsigned int in[size];
unsigned int out[size];
unsigned int in_2d[size][size];
unsigned int out_2d[size][size];

int main(void) {

  int i = size;
  int k = 0;
  while ( i-- > 0 ) { // zwektoryzowana
    *(out+size-k) = *(in+k) | 123456;
    k++;
  }

  i = 0;
  do {
    out[i] = ceil(sqrt(in[i+5]))*5;
  } while ( i++ < size-5); // nie zwektoryzowana

  // badanie niezmiennika petli
  for ( i = 0; i < size; i++)   { out[i] += in[i]; }  // zwektoryzowana
  for ( i = size; i > 0; i--)   { out[i] += in[i]; }   // zwektoryzowana
  for ( i = 0; i < size; i+=2)  { out[i] += in[i]; }   // wektoryzacja mozliwa, nieoplacalna 
  for ( i = 0; i < size; i+=20) { out[i] += in[i]; }   // wektoryzacja mozliwa, nieoplacalna
  for ( i = size; i > 0; i-=5)  { out[i] += in[i]; }   // nie zwektoryzowana
  for ( i = 1; i < size; i*=2 ) { out[i] += in[i] - 6; }  // nie zwektoryzowana
  for ( i = size; i > 0+i; i--) { out[i] += in[i]; }      //nie zwektoryzowana
  int var_1 = 23, var_2 = 100, var_3 = 3;
  for ( i = var_1; i < 5*var_2; i+=var_3) { out[i] += in[i]; } // wektoryzacja mozliwa, nieoplacalna
  
  for ( i = 0; i < 100; i++ ) // vectorized loop (vectorization width: 8, interleaved count: 1)
    for ( k = 0; k < size; k++) {
        out_2d[i][k] += sqrt(in_2d[i][k]);
    }  
  #pragma unroll  // wymusza rozwiniecie i kazda rozwinieta petla zostaje zwektoryzowana
  for ( i = 0; i < 100; i++ ) 
      for ( k = 0; k < size; k++) {
          out_2d[i][k] += sqrt(in_2d[i][k]);
      }  
  return 0;
}

void matrixMultiplication(float **a, float **b, float **c) {
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            c[i][j] = 0.0f;
            for (int k = 0; k < size; k++) {
                c[i][j] += a[i][k] * b[k][j];
            }
        }
    }
}


// wektoryzacja typowych funckji 
void fibonacciSequence(int n, int *sequence) { // nie zwektoryzowana - zaleznosc od danych wstecz
    sequence[0] = 0;
    sequence[1] = 1;
    for (int i = 2; i < n; i++) sequence[i] = sequence[i - 1] + sequence[i - 2];
}

int isPrime(int num) { // pomocnicza 
    if (num < 2) return 0;
    for (int i = 2; i <= sqrt(num); i++) 
        if (num % i == 0) return 0;
    return 1;
}

void generatePrimes(int limit, int *primes) { // nie zwektoryzowana
    int count = 0;
    for (int num = 2; num <= limit; num++) 
        if (isPrime(num)) primes[count++] = num;
}

void exponentialFunction(float *a, float *c) { // zwektoryzowana
    for (int i = 0; i < size; i++) {
        c[i] = expf(a[i]);
    }
}

// loops unrolling
float unrolledVectorSum(float *arr) { // nie zwektoryzowana - zaleznosc danych read after write, nie wspierany przypadek
    float sum = 0.0f;
    for (int i = 0; i < size; i += 4) { // loop not vectorized: cannot prove it is safe to reorder
        sum += arr[i] + arr[i + 1] + arr[i + 2] + arr[i + 3];
    }
    return sum;
}

void unrolledMatrixTranspose(float **a, float **c) { // nie zwektoryzowana - zaleznosc danych ?
    for (int i = 0; i < size; i += 2) {
        for (int j = 0; j < size; j += 2) {
            c[j][i] = a[i][j];
            c[j + 1][i] = a[i][j + 1];
            c[j][i + 1] = a[i + 1][j];
            c[j + 1][i + 1] = a[i + 1][j + 1];
        }
    }
}

// loops colapsing
void collapsedMatrixAddition(float **a, float **b, float **c) { // zwektoryzowana
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j += 2) {
            c[i][j] = a[i][j] + b[i][j];
            c[i][j + 1] = a[i][j + 1] + b[i][j + 1];
        }
    }
}

void collapsedVectorMultiplication(float *a, float *b, float *c) { // zwektoryzowana
    for (int i = 0; i < size; i += 2) {
        c[i] = a[i] * b[i];
        c[i + 1] = a[i + 1] * b[i + 1];
    }
}

// nested loops vectorization
void nestedMatrixMultiplication(float **a, float **b, float **c) { // zwektoryzowana
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            c[i][j] = 0.0f;
            for (int k = 0; k < size; k++) { // nie wektoryzowana
                c[i][j] += a[i][k] * b[k][j]; // loop not vectorized: value that could not be identified as reduction is used outside the loo
            }
        }
    }
}

