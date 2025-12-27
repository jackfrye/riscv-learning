
#include <stdio.h>

int find42(int array[], int size)
{
  int idx = -1;
  int iter;
  for(iter = 0; iter < size; iter++)
  {
    if(array[iter] == 42)
    {
      return iter;
    }
  }
  return idx;
}

int main(int argc, char** argv)
{
  int array[15] = {0, 1, 2, 3, 4, 5, 6, 42, 8, 9, 10, 11, 12, 13, 14};
  //int array[15] = {0, 1, 2, 3, 4, 5, 6, 13, 8, 9, 10, 11, 12, 13, 14};
  int ret;
  ret = find42(array, 15);
  printf("%d\n", ret);
}
