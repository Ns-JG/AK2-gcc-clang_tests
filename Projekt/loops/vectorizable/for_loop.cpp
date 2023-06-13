#include <stdio.h>

#define size 300

int a[size], b[size], c[size];

void function1() {
  int i;
  for (i=0; i<120; i++)
    a[i] = b[i] + c[i];
}

int main() { }

// size doesnt change the aproach nor range of loop 