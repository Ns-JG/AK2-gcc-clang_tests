#include <stdio.h>

#define size 300

int a[size], b[size], c[size];

void function1() {

  int i = 0;

  do {
    c[i] = a[i] * b[i];
    c[i] = c[i]<<1;
  } while ( i++ < 300 );
  
}

int main() { }