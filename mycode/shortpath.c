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
  char get1[11],get2[12];

  int i=0, check, x=0, count=0, take;
  cvector_vector_type(int) z = NULL;
  cvector_vector_type(int) w = NULL;
  while(!feof(inp)){
  	if(feof(inp)) break;
    fscanf(inp,"%s %s %d",get1,get2,take);
    printfInfo("%s %s %d\n",get1,get2,take);
   
    check = jset_insert_str(j1, get1, (Jval){.i = i});
    if(check){
    	 count++;
    	 char *t=(char*)malloc(sizeof(get1));
         strcpy(t,get1);
         jrb_insert_int(j2,i,(Jval){.s=t});
         ++i;
    }
    cvector_push_back(z, (jrb_find_str(j1,get1))->val.i );
    
    check = jset_insert_str(j1, get2, (Jval){.i = i});
    if(check){
       count++;
       char *t=(char*)malloc(sizeof(get2));
         strcpy(t,get2);
         jrb_insert_int(j2,i,(Jval){.s=t});
         ++i;
    }
    cvector_push_back(z, (jrb_find_str(j1,get2))->val.i );
    
    cvector_push_back(w, take);
}

  igraph_vector_t v;
  igraph_vector_init(&v, 0);
  igraph_vector_t weights;
  igraph_vector_init(&weights, 0);
  igraph_t g;
  igraph_create(&g, &v, count, IGRAPH_UNDIRECTED);
  for (size_t i=0;i<cvector_size(z)-1;i+=2) 
  	 igraph_add_edge(&g,z[i],z[i+1]);
  
  FILE *out = fopen(argc > 1? argv[1]: "graph_path.dot", "w");;
  igraph_write_graph_dot(&g, out);
  fclose(out);

  igraph_get_edgelist(&g, &v, 0);
  for (i=0; i<igraph_vector_size(&weights); i++)
   {  VECTOR(weights)[i] = w[i]; 
     printfInfo("%d",w[i]);
   }
 // igraph_get_shortest_path_dijkstra(&g,&v,NULL,from,to,IGRAPH_OUT);
  
  
  /*int res;
 
  igraph_is_dag(&g,&res);
  if(res){
  igraph_topological_sorting(&g,&v,IGRAPH_OUT);
  for (long int i = 0; i < igraph_vector_size(&v); ++i) {
    JRB tmp = jrb_find_int(j2,(long int)VECTOR(v)[i]);
    printf("%s ",tmp->val.s);

}
}
  else printf("-1");
  */
  cvector_free(z);
  cvector_free(w);
  igraph_destroy(&g);
  igraph_vector_destroy(&v);
  fclose(inp);
  return 0;
}