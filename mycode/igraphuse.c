#include <stdio.h>
#include <stdlib.h>
#include <igraph/igraph.h>
int main(int argc, char *argv[]) {
  igraph_t g;
  FILE *inp = fopen("/home/binh/CAdvanced/mycode/inp.txt","r");
  igraph_read_graph_edgelist(&g,inp,0,IGRAPH_DIRECTED);
  int res;
  igraph_is_dag(&g,&res);
  printf( res ? "Y" : "N");
  igraph_destroy(&g);
  return 0;
}

  

