#include<stdio.h>
#include<ctype.h>
#include<string.h>
void chuan(char a[])
{ int i=0,j=0,mark;
  char b[60];
  while ( isspace(a[i]) )
         i++;
  b[j]=toupper(a[i]);
  i++; j++;
  while ( a[i]!='\0' )
    {
      if ( isalpha(a[i]) )
        { mark=1;
          if ( isspace(a[i-1]) ) b[j]=toupper(a[i]);
          else  b[j]=tolower(a[i]);
          i++; j++;
	}
      else if ( isspace(a[i]) && mark==1)
	{ mark=0;
	  b[j]=a[i];
	  i++; j++;
	}
      else if ( isspace(a[i]) && mark==0)
	i++;
    }
  b[j]='\0';
  strcpy(a,b);
}
int main()
{ char a[60];
  printf("Nhap vao ten cua ban:\n");
  gets(a);
  chuan(a);
  printf("Ho ten cua ban sau khi chuan hoa:\n%s\n",a);
  return 0;
}
  
