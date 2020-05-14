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

void print_edges(igraph_vector_t *v) {
  for (long int i = 0; i < igraph_vector_size(v)/2; ++i) {
    printfInfo("%li %li\n", (long int)VECTOR(*v)[2 * i],
                        (long int)VECTOR(*v)[2 * i + 1]);
  }
}

int main(int argc, char *argv[]) {
  JRB j1 = make_jrb();
  JRB j2 = make_jrb();

  FILE *inp = fopen("/home/binh/Desktop/Ctest/mycode/inp.txt","r");
  char get1[11],get2[12];
  int i=0, check, x=0, count=0, take;

  cvector_vector_type(int) z = NULL;
  cvector_vector_type(int) w = NULL;
  
  while(!feof(inp)){
  	if(feof(inp)) break;

    fscanf(inp,"%s",get1);
    fscanf(inp,"%s",get2);
    fscanf(inp,"%d",&take);
    printfInfo("%s %s %d\n",get1,get2,take);
   
    check = jset_insert_str(j1, get1, (Jval){.i = i});
    if(check){
    	 count++;
         jrb_insert_int(j2,i,(Jval){.s=strdup(get1)});
         ++i;
    }
    cvector_push_back(z, (jrb_find_str(j1,get1))->val.i );
    
    check = jset_insert_str(j1, get2, (Jval){.i = i});
    if(check){
       count++;
         jrb_insert_int(j2,i,(Jval){.s=strdup(get2)});
         ++i;
    }
    cvector_push_back(z, (jrb_find_str(j1,get2))->val.i );
    
    cvector_push_back(w, take);
} 

  igraph_vector_t weights;
  igraph_vector_init(&weights, 0);
  for (size_t i=0; i<cvector_size(w); i++)
     VECTOR(weights)[i] = w[i]; 


  igraph_vector_t v;
  igraph_vector_init(&v, 0);
  igraph_vector_t e;
  igraph_vector_init(&e, 0);
  igraph_t g;
  igraph_create(&g, &e, count, IGRAPH_UNDIRECTED);
  for (size_t i=0;i<cvector_size(z)-1;i+=2) 
  	 igraph_add_edge(&g,z[i],z[i+1]);
  
  FILE *out = fopen(argc > 1 ? argv[1]: "graph_path.dot", "w");;
  igraph_write_graph_dot(&g, out);
  fclose(out);
  
 
  igraph_integer_t from = (jrb_find_str(j1,argv[1]))->val.i ;
  igraph_integer_t to = (jrb_find_str(j1,argv[2]))->val.i ;
  printfInfo("%d %d",from,to);

  
  
  igraph_get_shortest_path_dijkstra(&g,&v,&e,from,to,&weights,IGRAPH_ALL);
  for (long int i = 0; i < igraph_vector_size(&v); ++i) {
     JRB tmp = jrb_find_int(j2,(long int)VECTOR(v)[i]);
     printf("%s ",tmp->val.s);
}

  cvector_free(z);
  cvector_free(w);
  igraph_destroy(&g);
  igraph_vector_destroy(&v);
  igraph_vector_destroy(&e);
  igraph_vector_destroy(&weights);
  fclose(inp);
  return 0;
}