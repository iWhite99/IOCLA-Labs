#include "stdio.h"

int main() {
  int array[] = {4, 1, 3, 6, 2, 5};
  int n = 6;

  int i = 0, j, aux;

fori:
  if (i == n - 1) {
    goto end0;
  }
  j = 0;

forj:
  if (j == n - i - 1) {
    i++;
    goto fori;
  }
  if (array[j] > array[j + 1]) {
    aux = array[j];
    array[j] = array[j + 1];
    array[j + 1] = aux;
  }
  j++;
  goto forj;

end0:
  for (int i = 0; i < n; i++) {
    printf("%d ",array[i]);
  }
  printf("\n");
  return 0;
}
