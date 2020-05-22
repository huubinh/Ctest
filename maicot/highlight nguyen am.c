#include<stdio.h>
void high()
{ char c;
  int count=0;
  printf("Nhap vao doan van ban: \n");
  while( (c=getchar()) != '\n' )
    {  if (c=='a'||c=='i'||c=='u'||c=='e'||c=='o'||c=='A'||c=='I'||c=='U'||c=='E'||c=='O')
      count++;
  if (c=='a') putchar('A');
  else if (c=='i') putchar('I');
  else if (c=='u') putchar('U');
  else if (c=='e') putchar('E');
  else if (c=='o') putchar('O');
  else putchar(c);
    }
  printf("\nSo ki tu nguyen am la: %d\n",count);
}
int main()
{ high();
  return 0;
}
