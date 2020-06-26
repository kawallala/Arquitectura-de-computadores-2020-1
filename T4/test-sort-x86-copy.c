#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void sort_x86(char *noms[], int n){
  char **ult= &noms[n-1];
  char **p= noms;
  while (p<ult) {
    int i = 0;
    int j = 0;
    while(p[0][i] != ' '){
      i++;
    }
    while(p[1][j] != ' '){ 
      j++;
    }
    if(strcmp(&p[0][i], &p[1][j]) <= 0) {
      p++;
    }
    else if (strcmp(p[0], p[1])<=0)
      p++;
    else {
      char *tmp= p[0];
      p[0]= p[1];
      p[1]= tmp;
      p= noms;
    }
  }
}

// La estructura de una persona

char *noms[]= {"pedro gonzalez", "juan perez" , "diego gonzalez", "ana gonzalez", "vero fernandez", "jose perez", "monica fernandez", "alberto perez", "maria fernandez", "tatiana jerez"};

int main() {
  sort_x86(noms, 10);
  for (int i= 0; i<10; i++)
    puts(noms[i]);
  return 0;
}
