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