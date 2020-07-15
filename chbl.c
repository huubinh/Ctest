#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "DebugPrintf/debug_printf.h"
#include "libfdr/jrb.h"
#include "igraph/igraph.h"


int main(int argc, char *argv[]){
    JRB j_name = make_jrb();
    JRB j_id = make_jrb();
    int n,m;
    FILE *file;
    char item_name[100];
    int id; 

    if((strcmp(argv[1],"help"))==0){
    puts("Supported command: help, i2n, n2i, cc, cr, odg, rel.");
    return 0;
    }
    else if((strcmp(argv[1],"about"))==0){
puts("C Advanced 20142 final exam.");
return 0;
    }
    else if((strcmp(argv[1],"i2n")==0)){
if((file=fopen(argv[2],"r"))==NULL){
    printf("Can't open file.\n");
    exit(-1);
}
fscanf(file, "%d %d", &n, &m);
for(int i=0;i<n;i++){
fscanf(file, "%s %d", item_name, &id);
jrb_insert_int(j_id, id, (Jval){.s=strdup(item_name)});
}
int id_find = atoi(argv[3]);
JRB result = jrb_find_int(j_id, id_find);
printf("%s\n", result->val.s);
return 0;
   }
else if((strcmp(argv[1],"n2i"))==0){
if((file=fopen(argv[2],"r"))==NULL){
    printf("Can't open file.\n");
    exit(-1);
}
fscanf(file, "%d %d", &n, &m);
for(int i=0;i<n;i++){
fscanf(file, "%s %d", item_name, &id);
jrb_insert_str(j_name,strdup(item_name), (Jval){.i = id});
}
JRB result = jrb_find_str(j_name, argv[3]);
printf("%d\n",result->val.i);
return 0;
}   

else if((strcmp(argv[1],"cc"))==0){
if((file=fopen(argv[2],"r"))==NULL){
    printf("Can't open file.\n");
    exit(-1);
}
fscanf(file, "%d %d", &n, &m);
for(int i=0;i<n;i++){
fscanf(file, "%s %d", item_name, &id);
jrb_insert_int(j_id, id, (Jval){.s=strdup(item_name)});
}
igraph_vector_t vector_edge;
igraph_vector_init(&vector_edge, 0);
int start,end;
for(int i=0;i<m;i++){
    fscanf(file, "%d %d", &start, &end);
    igraph_vector_push_back(&vector_edge, start);
    igraph_vector_push_back(&vector_edge, end);
    printfInfo("%d %d ",start,end);
}
   igraph_vector_t q1;
   igraph_vector_init(&q1, 0);
   igraph_vector_t q2;
   igraph_vector_init(&q2, 0);
   int check_q1 = atoi(argv[3]);
   int check_q2= atoi(argv[4]);
   printfInfo("%d %d", check_q1, check_q2);


   for ( long int i = 0; i < igraph_vector_size(&vector_edge); i = i+ 2 ) {        //duyệt vector igraph
        if( (long int)VECTOR(vector_edge)[i] == check_q1) {
            igraph_vector_push_back(&q1, (long int)VECTOR(vector_edge)[i+1]);
            printfInfo("%d",(long int)VECTOR(vector_edge)[i+1]);
        }
    }

    for ( long int i = 0; i < igraph_vector_size(&vector_edge); i = i + 2 ) {        //duyệt vector igraph
     if((long int)VECTOR(vector_edge)[i] == check_q2){
        igraph_vector_push_back(&q2, (long int)VECTOR(vector_edge)[i+1]);
        printfInfo("%d",(long int)VECTOR(vector_edge)[i+1]);
    }
    }
     for(long int i = 0; i < igraph_vector_size(&q1); i++) 
       for(long int j = 0; j < igraph_vector_size(&q2); j++){
            if((long int)VECTOR(q2)[j]==(long int)VECTOR(q1)[i]){
                JRB result = jrb_find_int(j_id, (long int)VECTOR(q2)[j]);
                printf("%s\n", result->val.s);
                break;
        }
       } 
return 0;
}
    
    return 0;
    }