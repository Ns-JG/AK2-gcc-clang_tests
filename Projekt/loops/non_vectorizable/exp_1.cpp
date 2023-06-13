#include <stdio.h>
#define size 100

void function1() {
  short abc[100];
  short res[100];
  int i;

  for ( i = 0; i < size; i++ ) {
      res[i] = abc[ 100-1 - i] + abc[i];
  }
  
}

int main() { }