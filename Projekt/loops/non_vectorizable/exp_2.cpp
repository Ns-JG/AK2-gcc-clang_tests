#include <stdio.h>
#define size 60

unsigned int in[100];
unsigned int out[120];
unsigned int *pin = &in[0];
unsigned int *pout = &out[0];

void function1() {
  for ( int i = 0; i < 100; i+=5 )  // i+= k, where k > 1 -> lack of automatic vectorization support  
    *pout++ = *pin++;
}

int main() { return 0; }