#include <stdio.h>

static int state = 0;

static void user_thread_1()
{
  state = 0;
  for ( ; ; ) {
    printf("1\n");
    state += 1;
    if (state > 10) {
      return;
    }
  }
}

static void user_thread_2()
{
  state = 0;
  for ( ; ; ) {
    printf("2\n");
    state += 1;
    if (state > 10) {
      return;
    }
  }
}

int main() 
{
  for ( ; ; ) {
    user_thread_1();
    user_thread_2();
  }
  return 0;
}