#include <stdio.h>

int fibonacci(int i) {
  if (i < 0) return -1;
  if (i == 0) return 0;
  else if (i == 1) return 1;
  else return fibonacci(i-1) + fibonacci(i-2);
}

int main(void) {
  int n = 100;
  int result = fibonacci(n);
	printf("%d", result);
  return 0;
}
