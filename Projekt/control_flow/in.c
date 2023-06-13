#pragma distribute(enable)
#include <math.h>
#define size_l 100
#define size_h 10000

double in[size_l];
double out[size_l];

int* func1( double in[], double out[] ) { // zwektoryzowana
    for ( int i = 0; i < 100; i++ ) 
        if ( in[i] > 10 ) out[i] = in[i]; 
    return 0;
}

int* func2( double in[], double out[] ) { // blad policzalnosci
    for ( int i = 0; i < 100+i%2; i*=2 ) 
        if ( in[i] ) out[i] = in[i];
    return 0;
}

int dummy_func() { return 123; }

int* func3( double in[], double out[] ) { // nie oplacalne, zwektoryzowane
    for ( int i = 0; i < size_l; i+=2 ) 
        if ( in[i] == out[i] ) out[i] = dummy_func();
    return 0;
}

void dummy_func2() { int i = 0; while ( i++ < size_l) out[i] = 0; }

int* func4( double in[], double out[] ) { // brak wektoryzacji
    dummy_func2();
    int iterations = 0;
    do {
        if ( 5*in[iterations] == out[iterations] ) dummy_func2();
        out[iterations] = 10+in[iterations];
    } while ( iterations++ < size_l );

    return 0;
}

int* func5(double tab1[], double tab2[]) { // brak wektoryzacji -> controll flow
    extern int zmienna;
     for ( int i = 0; i < size_l; i+=2 ) {
        if ( zmienna == 57 ) break;
        tab1[i] = 10*tab2[i]+5;
     }
    return 0;
}

int* func6(double tab1[], double tab2[]) { // brak wektoryzacji -> controll flow
    extern int zmienna;
     for ( int i = 0; i < size_l; i+=2 ) {
        if ( zmienna == 57 ) return 0;
        tab1[i] = 10*tab2[i]+5;
     }
    return 0;
}

int* func7(double tab1[], double tab2[]) { // zwektoryzowane + model kosztu - nieefektywne
    extern int zmienna;
     for ( int i = 0; i < size_l; i+=2 ) {
        if ( zmienna%2 ) continue;;
        tab1[i] = 10*tab2[i]+5;
     }
    return 0;
}

double pom_func( double a, double b) {
    if ( a > b ) 
        return b+a*10;
    else    
        return b*10+a;
}
int* func8(double tab1[], double tab2[]) { // masked-computing -> zwektoryzowana
    int i = 100;
    for ( ; i > 0; i-- ) {
        tab2[i] = pom_func(tab1[i], 100);
    }
    return 0;
}

double* func9(double tab1[1000][1000], double tab2[1000][1000]) { // goto - brak wektoryzacji
    int i = 100;
    for ( ; i > 0; i-- ) {
        second:
        for ( int j = 0; j < 300; j++) {
            tab2[i][j] += tab1[j][i];
            if( tab2[i][j+1] > 100 )
                goto second;
        } 
    }
    return &tab1;
}

double* func10(double tab1[1000][1000], double tab2[1000][1000]) { // to samo co func9, zwektoryzowana
    int i = 100;
    for ( ; i > 0; i-- ) {
        second:
        for ( int j = 0; j < 300; j++) {
            tab2[i][j] += tab1[j][i];
            if( tab2[i][j+1] > 100 )
                continue;
        }
    }
    return &tab1;
}

double* func11(double tab1[1000][1000], double tab2[1000][1000]) { // to samo co func9, zwektoryzowana
    int i = 100;
    for ( ; i > 0; i-- ) {
        second:
        for ( int j = 0; j < 300; j++) {
            tab2[i][j] += tab1[j][i];
            if( tab2[i][j+1] > 100 )
                continue;
        }
    }
    return &tab1;
}

double* func12(double tab1[1000][1000], double tab2[1000][1000]) { // brak wektoryzacji - nie mozna okreslic granic tablicy
    for ( int i = 0; i < 1000; i+=2 ) {
        switch ((int)tab2[1][i]) {
            case 0:
                tab1[1][i] = tab2[i][0];
                break;
            case 1:
                tab1[1][i] = tab2[i][1];
                break;
            case 2:
                tab1[1][i] = tab2[i][2];
                break;
            case 3:
                tab1[1][i] = tab2[i][3];
                break;
            default:
                tab1[1][i] = tab2[1][i];
        }
    }
    return 0;
} // in.c:127:9: remark: loop not vectorized: loop contains a switch statement [-Rpass-analysis=loop-vectorize]

float func13( float a, float b, float c, float d) { // zwektoryzowana, funkcja z puli wektoryzowalnych
  float wynik;
  wynik = sqrt((a-c)*10+(b-d)*20);
  wynik = (int)floor(wynik);
  return wynik;
}

float pom_func_float( float a, float b) { // rekurencyjna funkcja, posiada rozkazy wektorowe, nie jest to kod zwektoryzowany
    if ( b <= 0 ) return a;
    a *= pom_func_float( a, b-1);
    return a;
} 
float func14( float a, float b, float c, float d) { // wektor posiada tylko jedna wartosc -> -O3 uzywa rozkazow wektorowych do obliczania kodu skalarnego?
  float wynik;
  wynik = pom_func_float(a, b) + pom_func_float(c, d);
  wynik = (int)floor(wynik);
  return wynik;
}

double* func15_unrolled(double out[100], double in[100]) { // funkcja zwektoryzowana - rozwinię†a 
    #pragma unroll
    for ( int i = 0; i < 20; i++ ) {
        out[i] = 10*in[i]*sqrt(in[i]+1);
    }
    return out;
}

double* func15_looped(double out[100], double in[100]) { // funkcja zwektoryzowana - rozwinię†a 
    for ( int i = 0; i < 20; i++ ) {
        out[i] = 10*in[i]*sqrt(in[i]+1);
    }
    return out;
}

double* func16_long_unrolled(double out[100], double in[100]) { // rowinieta petla, zwektoryzowana ( dla duzych i tez dziala )
    #pragma unroll
    for ( int i = 0; i < 100; i++ ) {
        out[i] = 10*in[i]*sqrt(in[i]+1);
    }
    return out;
}


float pom_func17(float x, float y, float xp, float yp) { // wektoryzowalna
  float temp;
  temp = (x-xp)*(x-xp) + (y-yp)*(y-yp);
  return temp;
}
double* func17(double tab1[1000], double tab2[1000]) { // zwektoryzowana
    for ( int i = 0; i < 1000-4; i+=4 ) {
        tab1[i] = tab2[i] * 2 + pom_func17((float)tab1[i], (float)tab1[i+1], (float)tab1[i+2], (float)tab1[i+3]);
    }
    return tab1;
}
double* func18(double tab1[1000], double tab2[1000]) { // zwektoryzowana
    for ( int i = 0; i < 1000-4; i+=4 ) {
        tab1[i] = tab2[i] * 2 + pom_func17(in[0], in[1], in[2], in[3]);
    }
    return tab1;
}

void func19() { // brak policzalnosci -> goto statment
    int i = 10;
    do {
      f1:
      out[i] = sqrt(out[i] * 2);
      if (out[i] > 50) {
        goto f1;
      }
    } while ( i++ < 1000 );
    return;
}

void func20() { // inline if -> zwektoryzowana
  int i = 10;
  while ( i++ < 300 ) {
    out[i] = in[i] > 10? floor(in[i]) : ceil(in[i]);
  }
}

double* func21( double in[1000], double out[1000] ) { // wielokrotne zagniezdzanie funkcji -> wektoryzowane 
    for ( int i = 0 ; i < 1000; i++ ) {
        in[i] = 999.0*5.0;
        out[i] = floor(exp(pow(sin(ceil(sin(in[i]))), 4)));
    }
    return out;
}


int main(void) { return 0; }