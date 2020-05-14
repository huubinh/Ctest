#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "igraph/igraph.h"
#include "libfdr/jrb.h"
#include "DebugPrintf/debug_printf.h"
#include "c-vector/cvector.h"
int jset_insert_str(JRB tree, char *key, Jval val) {
    if (jrb_find_str(tree,key)==NULL){
      char *s=(char*)malloc(sizeof(key));
        strcpy(s,key);
        jrb_insert_str(tree,s,val);
        return 1;
    }
    return 0;
}
int main(int argc, char *argv[]) {
  JRB j1 = make_jrb();
  JRB j2 = make_jrb();
  FILE *inp = fopen("/home/sinhvien/Ctest/mycode/inp.txt","r");
  char get[10];
  int i=0, check, x=0, count=0;
  cvector_vector_type(int) z = NULL;
  while(!feof(inp)){
    if(feof(inp)) break;
    fscanf(inp,"%s",get);
    printfInfo("%s\n",get);
   
    check = jset_insert_str(j1, get, (Jval){.i = i});
 
    if(check){
       count++;
       char *t=(char*)malloc(sizeof(get));
         strcpy(t,get);
         jrb_insert_int(j2,i,(Jval){.s=t});
         ++i;
    }
    cvector_push_back(z, (jrb_find_str(j1,get))->val.i );
    printfInfo("%d\n", z[x] );
    ++x;
    
}

  igraph_vector_t v;
  igraph_vector_init(&v, 0);
  igraph_t g;
  igraph_create(&g, &v, count, IGRAPH_DIRECTED);
  for (size_t i=0;i<cvector_size(z)-1;i+=2) 
     igraph_add_edge(&g,z[i],z[i+1]);
  

  int res;
 
  igraph_is_dag(&g,&res);
  if(res){
  igraph_topological_sorting(&g,&v,IGRAPH_OUT);
  for (long int i = 0; i < igraph_vector_size(&v); ++i) {
    JRB tmp = jrb_find_int(j2,(long int)VECTOR(v)[i]);
    printf("%s ",tmp->val.s);

}
}
  else printf("-1");
  cvector_free(z);
  igraph_destroy(&g);
  igraph_vector_destroy(&v);
  fclose(inp);
  return 0;
}