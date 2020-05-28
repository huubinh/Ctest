#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "DebugPrintf/debug_printf.h"
#include "libfdr/jrb.h"
#include "igraph/igraph.h"
#define MAX 10000

int jset_insert_str(JRB tree, char *key, Jval val);
void trimRight(char a[]);
int main(int argc, char* argv[])
{
	JRB j1 = make_jrb();
  JRB j2 = make_jrb();
  
  igraph_vector_t v;
  igraph_vector_init(&v, 0);

	int i=0,check;
	char *token;
  char name_vertex[500];
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
      sprintf(name_vertex,"%s,%s",token,line);
      check = jset_insert_str(j1, name_vertex, (Jval){.i = i});
      if(check) {
        jrb_insert_int(j2,i,(Jval){.s=strdup(name_vertex)});
        i++;
      }
      igraph_vector_push_back(&v, (jrb_find_str(j1,name_vertex))->val.i );
      printfInfo("%s\n",name_vertex); 
      token = strtok(NULL,"-");
    }
      igraph_vector_push_back(&v,-1);
  }
  for(JRB ptr = jrb_first(j1); ptr != jrb_nil(j1); ptr = jrb_next(ptr))
      printf("%s\n",ptr->key.s);
  

  igraph_vector_t y;
  igraph_vector_init(&y, 0);
  igraph_vector_t weights;
  igraph_vector_init(&weights, 0);
  igraph_vector_t e;
  igraph_vector_init(&e, 0);
  igraph_t g;
  igraph_create(&g, &y, i, IGRAPH_DIRECTED);
  long int mark = 0;
  while (mark < igraph_vector_size(&v)) {
     while((long int)VECTOR(v)[mark+1] != -1) {
        igraph_add_edge(&g,(long int)VECTOR(v)[mark],(long int)VECTOR(v)[mark+1]);
        igraph_vector_push_back(&weights,1);
        mark++;
      }
     mark += 2; 
  }
  
  JRB tm;
  tm = (jrb_find_str(j1,argv[2])) ;
  if (tm==NULL) {
    printf("-1");
    return 0;
    }
  igraph_integer_t from = tm->val.i;
  tm = (jrb_find_str(j1,argv[3])) ;
  if (tm==NULL) {
    printf("-1");
    return 0;
    }
  igraph_integer_t to = tm->val.i;
  
  if (from==to) {
    printf("0\n%s ",jrb_find_int(j2,from)->val.s);
    return 0; 
    }
  else {
    igraph_get_shortest_path_dijkstra(&g,&y,&e,from,to,&weights,IGRAPH_ALL);
    if(igraph_vector_size(&y)==1) {
      printf("-1");
      return 0; 
      }
    int sum =0;  
    for (long int i = 0; i < igraph_vector_size(&e); ++i)
      sum+= (long int)VECTOR(weights)[ (long int)VECTOR(e)[i] ];
    printf("%d\n",sum);
    for (long int i = 0; i < igraph_vector_size(&y); ++i) {
      JRB tmp = jrb_find_int(j2,(long int)VECTOR(y)[i]);
      printf("%s ",tmp->val.s); 
      }
  }




























  return 0;
}

int jset_insert_str(JRB tree, char *key, Jval val) {
    if (jrb_find_str(tree,key)==NULL){
        jrb_insert_str(tree,strdup(key),val);
        return 1;
    }
    return 0;
}
void trimRight(char a[])
{ int i;
  i=strlen(a);
  while (!isalpha(a[i-1])) i--;
  a[i+1]='\0';
}