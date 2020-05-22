#include<stdio.h>
#include<ctype.h>
#include<string.h>
void trimLeft(char a[])
{ int i=0,j;
  while (a[i]==' ') i++;
  for (j=0;a[i]!='\0';i++,j++)
    a[j]=a[i];
  a[j]='\0';
}
void trimRight(char a[])
{ int i;
  i=strlen(a);
  while (!isalpha(a[i-1])) i--;
  a[i+1]='\0';
}
void trimMid (char a[])
{ int i=0,j=0,m,n=0,mark;
  char b[100];
  while (a[i]==' ')
    {
    b[j]=a[i];
    i++; j++;
    }
  for(m=strlen(a);!isalpha(a[m-1]);m--) n+=1;
  while(i<(strlen(a)-n))
    {
      if(isalpha(a[i]))
	{ mark=1;
	  b[j]=a[i];
	  i++; j++;
	}
      else if(a[i]==' '&& mark==1)
	{ mark=0;
	  b[j]=a[i];
	  i++; j++;
	}
      else if(a[i]==' '&& mark==0)
	i++;
    }
      while(i<strlen(a))
	{ b[j]=a[i];
	  i++; j++;
	}
      b[j]='\0';
      strcpy(a,b);

}
int main()
{ char a[100];
  int m;
  do{
  printf("MENU\n");
  printf("1.Nhap xau\n2.Cat trai\n3.Cat phai\n4.Cat giua\n5.Thoat\n");
  printf("Chon chuc nang: ");
  scanf("%d%*c",&m);
  switch(m){
  case 1:
  printf("Nhap xau:\n");
  gets(a);
  printf("Xau da nhap:\n%s\n",a);
  break;
  case 2:
  trimLeft(a);
  printf("Xau sau khi cat trai:\n%s\n",a);
  break;
  case 3:
  trimRight(a);
  printf("Xau sau khi cat phai:\n%s\n",a);
  break;
  case 4:
  trimMid(a);
  printf("Xau sau khi cat giua:\n%s\n",a);
  break;
  case 5:
    printf("Hen gap lai!\n");
    break;
  default: printf("Vui long chon 1/2/3/4/5\n");
  }
  }
  while(m!=5);
  return 0;
}
