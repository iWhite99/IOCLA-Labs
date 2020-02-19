#include <stdio.h>

int main() {
  char str[] = "hai sa vedem ce avem aici";
  char substr[] = "vedem";
  char *string = str;
  char *substring = substr;
  
  printf("%p %s\n", str, str);

  char *begin;
  char *pattern;

while0:
  if (!*string) {
    goto end;
  }
  begin = string;
  pattern = substring;

while1:
  if (!(*string && *pattern && *string == *pattern)) {
    goto continued;
  }
  string++;
  pattern++;
  goto while1;

continued:
  if (!*pattern) {
    printf("%p %s\n", begin, begin);
    goto end;
  }
  string = begin + 1;
  goto while0;

end:
  return 0;
}
