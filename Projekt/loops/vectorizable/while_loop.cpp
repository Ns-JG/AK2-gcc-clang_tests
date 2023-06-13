#include <stdio.h>

#define size 300

int a[size], b[size], c[size];

void function1() {
  int i = 0;
  while ( i++ < 300 )
  c[i] = a[i] * b[i] + a[i];
  
}

int main() { }