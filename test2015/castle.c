#include <stdio.h>
#include <string.h>
#include "../igraph/igraph.h"
#include "../libfdr/jrb.h"
#include "../c-vector/cvector.h"

int jset_insert_str(JRB tree, char *key, Jval val);
int main() {
  
    int me,m,n,v1,v2,w,s,t,sum, max = 0, count = 0;
    FILE* f = fopen("/home/boong/Ctest/test2015/dothi.txt","r");
    
    JRB j = make_jrb();
    
    igraph_t graph;
    igraph_vector_t edge;
    igraph_vector_init( &edge, 0 );
    igraph_vector_t weight;
    igraph_vector_init( &weight, 0 );

    igraph_t graph_b;
    igraph_vector_t edge_b;
    igraph_vector_init( &edge_b, 0 );
    igraph_vector_t weight_b;
    igraph_vector_init( &weight_b, 0 );

    igraph_vector_t v;
    igraph_vector_init( &v, 0 );
    igraph_vector_t e;
    igraph_vector_init( &e, 0 );
    
    fscanf(f, "%d\t%d", &n, &m);
    
    int **matrix;
    matrix = (int**)malloc(sizeof(int*)*n);
    for(int i=0; i<n; i++)
        matrix[i] = (int*)malloc(sizeof(int)*n);
    for(int i=0; i<n; i++)
        for(int j=0; j<n; j++)
            matrix[i][j]=0;

    for (int i=0; i<m; i++) {
            fscanf(f, "%d\t%d\t%d", &v1, &v2, &w);

            if (w>=50){
                jrb_insert_int(j,v1,(Jval){.i=v1});
                jrb_insert_int(j,v2,(Jval){.i=v2});
                igraph_vector_push_back(&edge_b, v1);
                igraph_vector_push_back(&edge_b, v2);
                igraph_vector_push_back(&weight_b, w);
            }

            igraph_vector_push_back(&edge, v1);
            igraph_vector_push_back(&edge, v2);
            igraph_vector_push_back(&weight, w);
            matrix[v1-1][v2-1]=1;
            matrix[v2-1][v1-1]=1;
        }
    igraph_create( &graph, &edge, n, IGRAPH_UNDIRECTED);
    fclose(f);
    do{
    printf("\nMENU\n1.In ma trận kề\n2.In danh sách kề\n3.Danh sách thành trì\n4.Tìm đường\n5.Tìm đường bộ\n6.Thoát\nChọn: ");
    scanf("%d",&me);
    switch(me){
        
        case 1 :
        for(int i=0; i<n; i++){
            for(int j=0; j<n; j++)
                printf("%d\t", matrix[i][j]);
            printf("\n");  
        }
        break;
        
        case 2 :
        for(int i=0; i<n; i++){
            printf("- Castle %d:", i+1);
            for (int j=0; j<n; j++)
                if (matrix[i][j]==1)
                    printf(" %d", j+1);
            printf("\n");
        }
        break;
        
        case 3 :
        printf("a, Danh sách các thành trì chỉ có thể đến nó trực tiếp từ một thành trì khác bằng cách đi bộ :\n");
        int check; 
        for (int i=0; i<n; i++) {
            check = 1;
            for (long int j = 0; j < igraph_vector_size(&edge)-1; j+=2) {
                if ( (long int)VECTOR(edge)[j] == i+1 || (long int)VECTOR(edge)[j+1] == i+1 )
                    if ( (long int)VECTOR(weight)[j/2] < 50 ) {
                        check = 0;
                        break;
                    }
            }
            if ( check == 1 )
                printf(" %d", i+1);
        }
        printf("\nb, Danh sách thành trì có nhiều đường đi nối trực tiếp nhất :\n");
        
         for (int i=0; i<n; i++) {
            sum = 0;
            for (int j=0; j<n; j++)
                sum += matrix[i][j];
            if (sum>max) max=sum ;
         }
         for (int i=0; i<n; i++) {
            sum = 0;
            for (int j=0; j<n; j++)
                sum += matrix[i][j];
            if (sum==max) printf(" %d", i+1) ;
         }

        break;
        
        case 4 : 

        printf("Nhập thành trì xuất phát: ");
        scanf("%d",&s);
        printf("Nhập thành trì đích: ");
        scanf("%d",&t);
        
        if ( s>n || t>n || s<1 || t<1 ) {
            printf("ROUTE NOT FOUND");
            break;
        }
        if ( s==t ) {
            printf("0\n%d\n",s);
            break;
        }

        igraph_get_shortest_path_dijkstra( &graph, &v, &e, s, t, &weight, IGRAPH_ALL );
        if(igraph_vector_size(&v)==1) {
            printf("ROUTE NOT FOUND");
            break; 
        }    

        sum = 0;
        for (long int i = 0; i < igraph_vector_size(&e); i++)
            sum+= (long int)VECTOR(weight)[ (long int)VECTOR(e)[i] ];
        printf("%d\n",sum);
            
        for (long int i = 0; i < igraph_vector_size(&v); i++)
            printf("%ld ", (long int)VECTOR(v)[i]); 
        
        break;

        case 5 :
        for(JRB ptr = jrb_first(j); ptr != jrb_nil(j); ptr = jrb_next(ptr))
            count++;

        igraph_create( &graph_b, &edge_b, count, IGRAPH_UNDIRECTED );
        
        printf("Nhập thành trì xuất phát: ");
        scanf("%d",&s);
        printf("Nhập thành trì đích: ");
        scanf("%d",&t);

        check = 0;
        for (long int i = 0; i < igraph_vector_size(&edge_b); i++)
            if ( (long int)VECTOR(edge_b)[i] == s ) {
                check=1;
                break;
            }
        if ( check==0 ) {
            printf("ROUTE NOT FOUND");
            break; 
        }    
        check = 0;
        for (long int i = 0; i < igraph_vector_size(&edge_b); i++)
            if ( (long int)VECTOR(edge_b)[i] == t ) {
                check=1;
                break;
            }
        if ( check==0 ) {
            printf("ROUTE NOT FOUND");
            break; 
        }    
        if ( s==t ) {
            printf("0\n%d\n",s);
            break;
        }

        igraph_get_shortest_path_dijkstra( &graph_b, &v, &e, s, t, &weight_b, IGRAPH_ALL );
        if(igraph_vector_size(&v)==1) {
            printf("ROUTE NOT FOUND");
            break; 
        }    

        sum = 0;
        for (long int i = 0; i < igraph_vector_size(&e); i++)
            sum+= (long int)VECTOR(weight)[ (long int)VECTOR(e)[i] ];
        printf("%d\n",sum);
            
        for (long int i = 0; i < igraph_vector_size(&v); i++)
            printf("%ld ", (long int)VECTOR(v)[i]); 
        
        break;
        
        case 6 :
        printf("Bye!");
        break;

        default: printf("Vui lòng chọn đúng chức năng\n");
    }
    } while (me!=6);
    return 0;
}

int jset_insert_str(JRB tree, char *key, Jval val) {
    if (jrb_find_str(tree,key)==NULL){
    	char *s=(char*)malloc(sizeof(key));
        strcpy(s,key);
        jrb_insert_str(tree,s,val);
        return 1;
    }
    return 0;
}