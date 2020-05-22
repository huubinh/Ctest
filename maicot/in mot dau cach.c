#include <stdio.h>
int main()
{
  char c;
  int mark;
  while ((c=getchar()) != EOF)
    {
      if (c!=' ')
	{ mark = 0;
	  putchar(c);
	}
      else
	if (mark==0)
	{ mark = 1;
	  putchar(c);
	}
    }
  printf("\n");
   return 0;
}
