////////////////////////////////////////////////////////////////////////////////////////////////////
#include "igraph/igraph.h"

1. igraph_t graph;    //khởi tạo đồ thị

2. graph_destroy( &graph );   //free graph

3. igraph_vector_t vector;        //khởi tạo vector đồ thị
   igraph_vector_init( &vector, 0 );

4. igraph_vector_destroy( &vector );  //free vector

5. igraph_vector_push_back( &vector, int ); //thêm vào vector một phần tử  kiểu nguyên

6. for ( long int i = 0; i < igraph_vector_size(&vector); i++ ) {        //duyệt vector igraph
      printf(" %li ", (long int)VECTOR(vector)[i] );              //in phần tử trong vector
    }


7. igraph_create( &graph, &edge, vertix_num, IGRAPH_UNDIRECTED );   //tạo đồ thị từ 1 danh sách cạnh
                      //danh sách cạnh       
                             //số lượng đỉnh
                                         //vô hướng hay có hướng ( IGRAPH_DIRECTED )

8. igraph_get_shortest_path_dijkstra( &graph, &vector, &edge, from, to, &weights, IGRAPH_ALL );
                                           //vector lưu kết quả sắp xếp thứ tự đỉnh
                                                    //vector kết quả sắp xếp theo id cạnh
                                                           //id đỉnh nguồn
                                                                  //id đỉnh đích
                                                                       //vector trọng số lần lượt theo id cạnh ở trên
                                                                               //vô hướng, lấy có hướng xuôi với IGRAPH_OUT, ngược với IGRAPH_IN
**VD Về việc tìm đường ngắn nhất 
    *Đọc file:
        igraph_t graph;                     //khởi tạo đồ thị, vector cạnh, vector trọng số 
        igraph_vector_t edge;
        igraph_vector_init( &edge, 0 );
        igraph_vector_t weight;
        igraph_vector_init( &weight, 0 );

        fscanf(f,"%d",&m);  //đọc số cạnh được thêm 
        for (int i=0; i<m; i++) {
            fscanf(f, "%d %d %d", &v1, &v2, &w);
            igraph_vector_push_back(&edge, v1); //thêm đỉnh start vào vector cạnh
            igraph_vector_push_back(&edge, v2); //thêm đỉnh end vào vector cạnh 
            igraph_vector_push_back(&weight, w); //thêm trọng số vào vector trọng số
        }

        igraph_create( &graph, &edge, n, IGRAPH_UNDIRECTED); //tạo đồ thị từ danh sách cạnh, có n đỉnh, vô hướng

    *Sử dụng trong main:
            igraph_vector_t v;  //khởi tạo vector lưu kết quả trả về
            igraph_vector_init( &v, 0 );  //v lưu thứ tự các đỉnh trên đường đi ngắn nhất
            igraph_vector_t e;
            igraph_vector_init( &e, 0 );  //e lưu thứ tự các cạnh trên đường đi ngắn nhất

            
            igraph_get_shortest_path_dijkstra( &graph, &v, &e, atoi(argv[3]), atoi(argv[4]), &weight, IGRAPH_ALL );
                                                            //đỉnh bắt đầu    //đỉnh kết thúc
            
            int sum = 0; //lưu tổng trọng số đường đi
            for (long int i = 0; i < igraph_vector_size(&e); i++)
                sum+= (long int)VECTOR(weight)[ (long int)VECTOR(e)[i] ];
                                                                            //cộng tổng trọng số các cạnh trên đường đi
            printf("%d\n",sum); //in  ra tổng trọng số
            
            for (long int i = 0; i < igraph_vector_size(&v); i++) {  //duyệt vector v lưu lần lượt thứ tự đỉnh trên đường đi
                JRB tmp = jrb_find_int(j_id,(long int)VECTOR(v)[i]);  //tìm tên tương ứng id trong cây jrb và in ra màn hình
                printf("%s\n",tmp->val.s); 
            }

            igraph_vector_destroy(&v);
            igraph_vector_destroy(&e);


**VD về việc tìm cạnh nối trực tiếp giữa 2 đỉnh //duyệt vector cạnh
                int dis = -1; //khởi tạo dis
                int from = atoi(argv[4]);  //id đỉnh start
                int to = atoi(argv[5]);  //id đỉnh end
                
                //đối với đồ thị vô hướng :
                for (long int i = 0; i < igraph_vector_size(&edge); i+=2) {  //kiểm tra lần lượt 2 phần tử một 
                    if (  ( (long int)VECTOR(edge)[i] == from && (long int)VECTOR(edge)[i+1] == to ) ||   // vai trò 2 đỉnh trong cạnh là như nhau
                          ( (long int)VECTOR(edge)[i] == to && (long int)VECTOR(edge)[i+1] == from ) )    // đối với đồ thị vô hướng 
                            dis = (long int)VECTOR(weight)[i/2];  //trọng số của cạnh nối đó
                }
                printf("%d\n",dis);

                //nếu là đồ thị có hướng, phần sau chỉ là : 
                for (long int i = 0; i < igraph_vector_size(&edge); i+=2) {  //kiểm tra lần lượt 2 phần tử một 
                    if ( (long int)VECTOR(edge)[i] == from && (long int)VECTOR(edge)[i+1] == to )  // check xem có cạnh có hướng nối từ from đến to không
                            dis = (long int)VECTOR(weight)[i/2];  //trọng số của cạnh nối đó
                }
                printf("%d\n",dis);


////////////////////////////////////////////////////////////////////////////////////////////////////
#include "libfdr/jrb.h"

1. JRB j = make_jrb(); //khởi tạo 

2. jrb_free_tree(j); //free tree

3.  //các hàm insert key và val vào cây jrb
    jrb_insert_str( jrb_name , strdup(name), (Jval){.i = id}); //truyền name vào cây có key là string              

    jrb_insert_int( jrb_id , id, (Jval){.s = strdup(name)} );  //truyền id vào cây có key là int

4.  //các hàm tìm kiếm theo key
JRB result = jrb_find_str( jrb_name, name_find); //tìm key name_find trong cây
    result->val.i //value id 

JRB result = jrb_find_int( jrb_id, id_find);  //tìm key id_find trong cây
    result->val.s //value name

//nếu không tìm thấy, hàm trả về NULL

5. for(JRB ptr = jrb_first(j); ptr != jrb_nil(j); ptr = jrb_next(ptr))        //duyệt jrb tree
      printf("%s\n",ptr->key.s); //in giá trị của key là string

6.  int jset_insert_str(JRB tree, char *key, Jval val) { // hàm kiểm tra key đã tồn tại chưa, nếu chưa thì insert vào 1 bản sao nhờ strdup
        if (jrb_find_str(tree,key)==NULL){
            jrb_insert_str(tree,strdup(key),val);
            return 1;
        }
        return 0;
    }

    jset_insert_str(j, key, (Jval){.i = i}); //tạo nhanh 1 biến jval có jval.i = i;



////////////////////////////////////////////////////////////////////////////////////////////////////
#include "libfdr/fields.h"

*VD Về việc đọc danh sách kề có hướng
    *File :
    5
    1 3 5 6
    2 5 7
    3 6 8 9 4
    4 5
    5 4 3
    *Sử dụng :
        
        IS is; //khởi tạo
        is = new_inputstruct(argv[2]); //truyền đường dẫn, đọc file
        get_line(is);   //đọc dòng đầu
        int n = atoi( is->fields[0] ); // lưu số dòng cần đọc vào n
        for (int i=0; i<n; i++){
            get_line(is);
            int start,end;
            start = atoi( is->fields[0] ); //lưu id đỉnh đầu
            for (int j=1; j < is->NF; j++){
                end = atoi( is->fields[j] ); //lưu từng id đỉnh cuối
                matrix[start-1][end-1] = 1; //đánh dấu trong ma trận kề, -1 vì ma trận đánh số từ 0, id đánh số từ 1
            }
        }
        jettison_inputstruct(is); //free

////////////////////////////////////////////////////////////////////////////////////////////////////
 
1. 
  #include <ctype.h>
  char* trim(char* token){   //lọai bỏ khoảng trắng thừa đầu cuối của chuỗi
     while (isspace((unsigned)token[0])) token++;
     while (isspace((unsigned)token[strlen(token)-1])) token[strlen(token)-1] = '\0';
     return strdup(token);
    }

    char* trim(char* token){   //lọai bỏ khoảng trắng đầu cuối , chuyển chữ đầu là hoa, các chữ sau là thường
     while (isspace((unsigned)token[0])) token++;  
     while (isspace((unsigned)token[strlen(token)-1]))
            token[strlen(token)-1] = '\0';
     token[0] = toupper(token[0]);
     for ( int i=1; i<strlen(token); i++ )
            token[i] = tolower(token[i]);
     return strdup(token);
    }

    char* trim(char* token){   //lọai bỏ khoảng trắng thừa đầu cuối, tất cả các chữ thành thường
     while (isspace((unsigned)token[0])) token++;  
     while (isspace((unsigned)token[strlen(token)-1])) 
            token[strlen(token)-1] = '\0';
     for ( int i=0; i<strlen(token); i++ )
            token[i] = tolower(token[i]);
     return strdup(token);
    }

    char* trim(char* token){   //lọai bỏ khoảng trắng thừa đầu cuối, tất cả các chữ thành hoa
     while (isspace((unsigned)token[0])) token++;  
     while (isspace((unsigned)token[strlen(token)-1])) 
            token[strlen(token)-1] = '\0';
     for ( int i=0; i<strlen(token); i++ )
            token[i] = toupper(token[i]);
     return strdup(token);
    }

*VD : 
    char a[30];
    gets(a);
    printfInfo("%s",trim(a));


2.  int **matrix;   //Cấp phát động mảng 2 chiều
    matrix = (int**)malloc(sizeof(int*)*so_hang);
    for(int i=0; i<so_hang; i++)
        matrix[i] = (int*)malloc(sizeof(int)*so_cot);
    
    for(int i=0; i<so_hang; i++)  //gán tất cả phần tử bằng 0
        for(int j=0; j<so_cot; j++)
            matrix[i][j]=0;