#include <string.h>

void sort_x86(char **noms, int n) {
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
