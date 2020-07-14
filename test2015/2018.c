#include <stdio.h>
#include <string.h>

#include "../igraph/igraph.h"
#include "../libfdr/jrb.h"
#include "../c-vector/cvector.h"
#include "../DebugPrintf/debug_printf.h"

int main( int argc, char* argv[] ) {
    
    if ( strcmp(argv[1],"-t") == 0 ) {   //function 1
        puts("C-Advanced, HK20182");
        return 0;
    }
    
    else {
        
        int m,id;
        char name[31];
        if ( strcmp(argv[1],"-s") == 0 ) {   //function 2
            FILE* f = fopen(argv[2],"r");
            fscanf(f,"%d",&m);
            for (int i=0; i<m; i++) {
                fscanf(f, "%s %d", name, &id);
                printf("%s %d\n", name, id);
            }
            fclose(f);
            return 0;
        }

        else {   
            JRB j_id = make_jrb();
            JRB j_name = make_jrb();
            int n;

            FILE* f = fopen(argv[3],"r");
            fscanf(f,"%d",&m);
            for (int i=0; i<m; i++) {
                fscanf(f, "%s %d", name, &id);
                jrb_insert_int( j_id, id, (Jval){.s=strdup(name)} );
                jrb_insert_str( j_name, name, (Jval){.i= id} );
            }
            fclose(f);

            JRB j_id_kho = make_jrb();
            JRB j_name_kho = make_jrb();
            f = fopen(argv[2],"r");
            fscanf(f,"%d",&n);

            int **matrix;
            matrix = (int**)malloc(sizeof(int*)*m);
            for(int i=0; i<m; i++)
                matrix[i] = (int*)malloc(sizeof(int)*n);
    
            int sp,num;
            for( int i=0; i<n; i++) {
                fscanf(f, "%s %d", name, &id);
                jrb_insert_int( j_id_kho, id, (Jval){.s=strdup(name)} );
                jrb_insert_str( j_name_kho, name, (Jval){.i= id} );
                for( int j=0; j<m; j++) {
                    fscanf(f, "%d %d", &sp, &num);
                    matrix[sp-1][id-1] = num;
                }
            }

            igraph_t graph;
            igraph_vector_t edge;
            igraph_vector_init( &edge, 0 );
            igraph_vector_t weight;
            igraph_vector_init( &weight, 0 );
            int count,v1,v2,w;
            fscanf(f, "%d", &count);
            for( int i=0; i<count; i++) {
                fscanf(f, "%d %d %d", &v1, &v2, &w);
                igraph_vector_push_back(&edge, v1);
                igraph_vector_push_back(&edge, v2);
                igraph_vector_push_back(&weight, w);
            }
            igraph_create( &graph, &edge, n, IGRAPH_UNDIRECTED);
            fclose(f);

            if ( strcmp(argv[1],"-w") == 0 ) {    //function 3
                int dis = -1;
                int from = atoi(argv[4]);
                int to = atoi(argv[5]);
                for (long int i = 0; i < igraph_vector_size(&edge); i+=2) {
                if (  ( (long int)VECTOR(edge)[i] == from && (long int)VECTOR(edge)[i+1] == to ) ||
                      ( (long int)VECTOR(edge)[i] == to && (long int)VECTOR(edge)[i+1] == from ) )
                    dis = (long int)VECTOR(weight)[i/2];
                }
                if (dis == -1)
                    printf("%d\n",dis);
                else printf("%d km\n",dis);
                return 0;
            }
            else if ( strcmp(argv[1],"-a") == 0 ) {    //function 4
                for(int i=0; i<n; i++ ) {
                    printf("%s\n",(jrb_find_int(j_id_kho,i+1))->val.s);
                    for(int j=0; j<m; j++)
                        printf("%s %d\n",(jrb_find_int(j_id,j+1))->val.s, matrix[j][i] );
                    printf("-----\n");
                    }
            
                return 0;
            }
            else if ( strcmp(argv[1],"-h") == 0 ) {    //function 5
                int id_sp = atoi(argv[4]);
                int id_kho = atoi(argv[5]);
                int id_ke;
                printf("%s\n",(jrb_find_int(j_id_kho,id_kho))->val.s);
                printf("%s %d\n",(jrb_find_int(j_id,id_sp))->val.s, matrix[id_sp-1][id_kho-1] );
                printf("-----Cac kho ke la:\n");
                for (long int i = 0; i < igraph_vector_size(&edge); i+=2) {
                  if ( (long int)VECTOR(edge)[i] == id_kho ) {
                    id_ke = (long int)VECTOR(edge)[i+1];
                    printf("%s\n",(jrb_find_int(j_id_kho,id_ke))->val.s);
                    printf("%s %d\n",(jrb_find_int(j_id,id_sp))->val.s, matrix[id_sp-1][id_ke-1] );
                }
                  else if ( (long int)VECTOR(edge)[i+1] == id_kho ) {
                    id_ke = (long int)VECTOR(edge)[i];
                    printf("%s\n",(jrb_find_int(j_id_kho,id_ke))->val.s);
                    printf("%s %d\n",(jrb_find_int(j_id,id_sp))->val.s, matrix[id_sp-1][id_ke-1] );
                }
            }
                return 0;
            }
            else if ( strcmp(argv[1],"-g") == 0 ) {    //function 6
                int id_sp = atoi(argv[4]);
                int soluong = atoi(argv[5]);
                int id_kho = atoi(argv[6]);
                int id_ke = atoi(argv[7]);
                if ( matrix[id_sp-1][id_kho-1] >= soluong )
                    printf("Dat hang thanh cong, thoi gian giao hang la 30 phut.\n");
                else {
                    if ( matrix[id_sp-1][id_kho-1] + matrix[id_sp-1][id_ke-1] < soluong )
                    printf("Dat hang khong thanh cong.\n");
                    else {
                        igraph_vector_t v;
                        igraph_vector_init( &v, 0 );
                        igraph_vector_t e;
                        igraph_vector_init( &e, 0 );
                        igraph_get_shortest_path_dijkstra( &graph, &v, &e, id_kho, id_ke, &weight, IGRAPH_ALL );
                        int sum = 0;
                        for (long int i = 0; i < igraph_vector_size(&e); i++)
                        sum+= (long int)VECTOR(weight)[ (long int)VECTOR(e)[i] ];
                        float time = sum / 0.5 + 30 ;
                        int hour = time /60 ;
                        int minute = time - 60*hour;
                        printf("Dat hang thanh cong, thoi gian giao hang la %d gio %d phut.\n",hour,minute);
                    }
                }
                return 0;
            }
}
}
}