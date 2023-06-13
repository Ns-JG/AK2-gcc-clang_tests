#pragma distribute(enable)
#include <math.h>
#include <stdio.h>
#include <immintrin.h>
#define size_l 100
#define size_h 10000

float* func1(float tab1[1000], float tab2[1000]) { // brak wektoryzacji -> in.c:9:5: remark: loop not vectorized: unsafe dependent memory operations in loop. ( zazębienie instrukcji dla i = 0)
    for ( int i = 0; i < 1000-4; i++ ) {
        tab1[i+0] = tab2[i] * 2;
        tab1[i+1] = tab2[i] * 3;
        tab1[i+2] = tab2[i] * 4;
        tab1[i+3] = tab2[i] + 10;
    }
    return tab1;
}

void func2(int length, float *a, float *b, float *c, float *x1, float *x2) { // zwektoryzowana zaleznosc artumentow jest akceprowana jesli forma obliczen jest realizowalna w postaci opecaji na wektorach 
    for (int i=0; i<length; i++) {
        float s = b[i]*b[i] - 4*a[i]*c[i];
        if ( s >= 0 ) {
            s = sqrt(s) ;
            x2[i] = (-b[i]+s)/(2.*a[i]);
            x1[i] = (-b[i]-s)/(2.*a[i]);
        } else {
            x2[i] = 0.;
            x1[i] = 0.; 
        }
    }
}

int func3(int *A) { // sumowanie -> agregaja wynikow wektorow - zwektoryzowana 
  unsigned n = 50;
  unsigned sum = 0;
  for (int i = 0; i < n; ++i)
      sum += A[i];
  return sum;
}

#define size 1000
// Read after write dependency 
void func4( float a[size], float b[size], float c[size], float d[size]) { // nie zwektoryzowana
  for ( int i = 1; i < size; i++ ) {
    a[i] = a[i-1] + b[i];
    c[i] = a[i] + d[i];
  }
}
// write after read dependency 
void func5( float a[size], float b[size], float c[size], float d[size]) { // nie zwektoryzowana
  for ( int i = 1; i < size; i++ ) {
    a[i] = b[i-1] + c[i-1];
    b[i] = a[i] + c[i];
  }
}

void func6( float a[size], float b[size], float c[size], float d[size]) { // nie zwektoryzowana
  for ( int i = 1; i < size; i++ ) {
    a[i-1] = a[i];
  }
}

void func7( float a[size], float b[size], float c[size], float d[size]) { // nie zwektoryzowana
  for ( int i = 0; i < size; i++ ) 
    a[i] = b[i] + c[i];
  for ( int i = 1; i < size; i++ ) 
    a[i] = a[i-1] + d[i];
}

int main (void) {
    return 0;
}