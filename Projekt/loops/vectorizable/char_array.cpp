#include <stdio.h>
#define size 60

char abc[100] = "najnfoahjjfaojrgiohervnasoijrnvaiorjvnlkasdmvioarjnvioasrnvaosijrnviursdvhsrdgjvhrklg";
char res[100];

void function1() {
  int i;
  for ( i = 0; i < size; i++ ) {
    
    
    if ( abc[i] != *"a" ) {
      res[i] = abc[i];
    }
    
  }
  
}

int main() { }