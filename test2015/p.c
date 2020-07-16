#include <stdio.h>
#include <string.h>
#include "../igraph/igraph.h"
#include "../libfdr/jrb.h"
#include "../c-vector/cvector.h"


int main( int argc, char* argv[] ) {
    
    if ( strcmp(argv[1],"-h") == 0 ) {   //function 1
        puts("C-Advanced, HK20152");
        return 0;
    }
    
    else {
       
        JRB j1 = make_jrb();
        int n,id,m,v1,v2,w;
        char ip[20];
       
        FILE* f = fopen(argv[2],"r");
        
        fscanf(f,"%d",&n);
        for (int i=0; i<n; i++) {
            fscanf(f, "%d %s", &id, ip);
            jrb_insert_int( j1, id, (Jval){.s=strdup(ip)} );
        }
        
        igraph_t graph;
        igraph_vector_t edge;
        igraph_vector_init( &edge, 0 );
        igraph_vector_t weight;
        igraph_vector_init( &weight, 0 );

        fscanf(f,"%d",&m);
        for (int i=0; i<m; i++) {
            fscanf(f, "%d %d %d", &v1, &v2, &w);
            igraph_vector_push_back(&edge, v1);
            igraph_vector_push_back(&edge, v2);
            igraph_vector_push_back(&weight, w);
        }
        igraph_create( &graph, &edge, n, IGRAPH_UNDIRECTED);
        fclose(f);

        if ( strcmp(argv[1],"-v") == 0 ) {  //function 2
            for(JRB ptr = jrb_first(j1); ptr != jrb_nil(j1); ptr = jrb_next(ptr))
                printf("%d %s\n",ptr->key.i,ptr->val.s);
            
        }

        else if ( strcmp(argv[1],"-w") == 0 )  {  //function 3
            int dis = -1;
            for (long int i = 0; i < igraph_vector_size(&edge); i+=2) {
                if (  ( (long int)VECTOR(edge)[i] == atoi(argv[3]) && (long int)VECTOR(edge)[i+1] == atoi(argv[4]) ) ||
                      ( (long int)VECTOR(edge)[i] == atoi(argv[4]) && (long int)VECTOR(edge)[i+1] == atoi(argv[3]) ) )
                    dis = (long int)VECTOR(weight)[i/2];
            }
            printf("%d\n",dis);
            
        }

        else if ( strcmp(argv[1],"-p") == 0 )  {  //function 4
            
            igraph_vector_t v;
            igraph_vector_init( &v, 0 );
            igraph_vector_t e;
            igraph_vector_init( &e, 0 );

            igraph_get_shortest_path_dijkstra( &graph, &v, &e, atoi(argv[3]), atoi(argv[4]), &weight, IGRAPH_ALL );
            
            int sum = 0;
            for (long int i = 0; i < igraph_vector_size(&e); i++)
                sum+= (long int)VECTOR(weight)[ (long int)VECTOR(e)[i] ];
            printf("%d\n",sum);
            
            for (long int i = 0; i < igraph_vector_size(&v); i++) {
                JRB tmp = jrb_find_int(j1,(long int)VECTOR(v)[i]);
                printf("%s\n",tmp->val.s); 
            }

            igraph_vector_destroy(&v);
            igraph_vector_destroy(&e);
            
        }

        else if ( strcmp(argv[1],"-n") == 0 )  {  //function 5
            
            cvector_vector_type (int) cvec = NULL;
            for (long int i = 0; i < igraph_vector_size(&edge); i+=2) {
                if (  (long int)VECTOR(edge)[i] == atoi(argv[3]) ) {
                    cvector_push_back(cvec, (long int)VECTOR(edge)[i+1]  );
                    cvector_push_back(cvec, (long int)VECTOR(weight)[i/2] );
                }
                else if (  (long int)VECTOR(edge)[i+1] == atoi(argv[3]) ) {
                    cvector_push_back(cvec, (long int)VECTOR(edge)[i] );
                    cvector_push_back(cvec, (long int)VECTOR(weight)[i/2] );
                }
            }
            printf("%ld\n",cvector_size(cvec)/2);
            for ( size_t i=0; i<cvector_size(cvec); i+=2)
                printf("%d %s %d\n", ( jrb_find_int(j1,cvec[i]) ) ->key.i, ( jrb_find_int(j1,cvec[i]) ) ->val.s, cvec[i+1] );
            
            cvector_free(cvec);
            
        }

        else if ( strcmp(argv[1],"-s") == 0 )  {  //function 6
            
        /*    igraph_t sub;
            igraph_vs_t vs;
            igraph_vector_t vector;
            igraph_vector_init( &vector, 0 );

            igraph_vector_push_back(&vector, atoi(argv[3]) );
            igraph_vector_push_back(&vector, atoi(argv[4]) );

            igraph_vs_vector(&vs, &vector);
            igraph_induced_subgraph(&graph, &sub, vs, IGRAPH_SUBGRAPH_AUTO);
        */
        
        printf("2\n");
        printf("%d %s\n", atoi(argv[3]), ( jrb_find_int(j1,atoi(argv[3])) ) ->val.s);
        printf("%d %s\n", atoi(argv[4]), ( jrb_find_int(j1,atoi(argv[4])) ) ->val.s);
        printf("1\n");
        int dis = -1;
        for (long int i = 0; i < igraph_vector_size(&edge); i+=2) {
            if (  ( (long int)VECTOR(edge)[i] == atoi(argv[3]) && (long int)VECTOR(edge)[i+1] == atoi(argv[4]) ) ||
                      ( (long int)VECTOR(edge)[i] == atoi(argv[4]) && (long int)VECTOR(edge)[i+1] == atoi(argv[3]) ) )
                    dis = (long int)VECTOR(weight)[i/2];
            }
        printf("%s %s %d\n",argv[3], argv[4], dis);
        
        }

        jrb_free_tree(j1);
        igraph_destroy(&graph);
        igraph_vector_destroy(&edge);
        igraph_vector_destroy(&weight);
        return 0;
    }
}




  
  
  
  