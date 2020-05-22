#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "DebugPrintf/debug_printf.h"
#include "libfdr/jrb.h"
#define MAX 100000

int jset_insert_str(JRB tree, char *key, Jval val);
void chuan(char a[]);

int main(int argc, char* argv[])
{
	JRB j1 = make_jrb();
	int i=0,check;
	char *token;

	FILE *f = fopen(argv[1],"r");
  if (f == NULL) 
    printfInfo("Can't open file.");
  char s[MAX],line[5],direct[5];

  while(!feof(f)) 
  { 
    if(feof(f)) break;
	  fscanf(f,"%[^(] %s ",line,direct);
    printfInfo("%s %s\n",line,direct);
    fgets(s,MAX,f);
    
    token = strtok(s,"-");
    while( token != NULL ) 
    { 
      check = jset_insert_str(j1, token, (Jval){.i = i});
      if(check) i++;
      token = strtok(NULL,"-");
    }
    /*
    token = strtok(s,"–");
    while( token != NULL ) 
    { 
      check = jset_insert_str(j1, token, (Jval){.i = i});
      if(check) i++;
      token = strtok(NULL,"–");
    }
    */
  }
  for(JRB ptr = jrb_first(j1); ptr != jrb_nil(j1); ptr = jrb_next(ptr))
      printf("%s\n",ptr->key.s);
  return 0;
}

int jset_insert_str(JRB tree, char *key, Jval val) {
    if (jrb_find_str(tree,key)==NULL){
        jrb_insert_str(tree,strdup(key),val);
        return 1;
    }
    return 0;
}
