#include <stdio.h>

int main() {
  int array[] = {0, 1, 3, 32, 16, 1, 7};
  int maximum = array[0];
  int i = 1;
  int n = 7;

try0:
  if (i == n) {
    goto end0;
  }
  if (maximum < array[i]) {
    maximum = array[i];
  }
  if (i < n) {
    i++;
    goto try0;
  }

end0:
  printf("%d\n", maximum);
  return 0;
}
