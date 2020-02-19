#include <stdio.h>

int main() {
  int array[] = {1, 2, 3, 4, 5, 6, 7};
  int n = 7;

  int x = 6;

  int l = 0;
  int r = n - 1;

  int m;

search:
  if (r >= l) {
    m = l + (r - l) / 2;
    goto check;
  }

check:
  if (array[m] == x) {
    goto ok;
  }
  if (array[m] < x) {
    l = m + 1;
  }
  if (array[m] > x) {
    r = m - 1;
  }
  goto search;

ok:
  printf("%d\n", m);
  return 0;
}
