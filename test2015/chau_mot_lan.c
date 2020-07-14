#include <stdio.h>
#include<string.h>
#include<stdlib.h>
#include "../DebugPrintf/debug_printf.h"
#include "../libfdr/jrb.h"
#include "../igraph/igraph.h"


int main(int argc, char* argv[]){
 /*   if(argc == 1)
puts("Chua day du tham so truyen vao");
return 0;
if((strcmp(argv[1],"-ml")) == 0){
    if((strcmp(argv[2],"1"))==0){
puts("Day la code cua chau MOT LANNNNNNN");
return 0;
    }
else if((strcmp(argv[2],"2"))==0)
{
    puts("Van la mot lan");
    return 0;
}

*/
/*
JRB j1 = make_jrb();
JRB j2 = make_jrb();
int id;
char ip[20];
FILE* file;
if((strcmp(argv[1],"-h"))==0){
    puts("C-Advanced, HK20152");
    return 0;
}
else if((strcmp(argv[1],"-v"))==0){
if((file = fopen(argv[2],"r")) == NULL){
printf("Khong the mo file.\n");
exit(-1);
}
int count;
fscanf(file, "%d", &count);
for(int i=0; i < count; i++){
    fscanf(file, "%d %s",&id,ip);
    printf("%d %s\n",id,ip);

}
return 0;
}
*/
JRB j1 = make_jrb();
JRB j2 = make_jrb();
FILE* file;
int n;
int ver,edge;
int dinh1,dinh2,trongso;

int **matrix;
matrix = (int**)malloc(sizeof(int*)*n);
for(int i=0; i<n; i++)
    matrix[i] = (int*)malloc(sizeof(int)*n);


for(int i=0; i<n; i++)
    for(int j=0; j<n; j++)
        matrix[i][j]=0;

do{
    printf("Menu: \n");
    printf("1: Doc file va in ra man hinh ma tran ke.\n");
    printf("2: In danh sach ke.\n");
    printf("3: In ra danh sach thanh tri.\n");
    printf("4: Tim duong di ngan nhat.\n");
    printf("5: Tim duong bo ngan nhat.\n");
switch(n){
    case 1:        
    if((file = fopen("dothi.txt","r")) == NULL){
        printf("Khong the mo file.\n");
        exit(-1);
    }        
    
    fscanf(file, "%d %d", &ver, &edge);
    for(int i=0;i<edge;i++){
        //fscanf(file, "%d %d %d",)
    }                                                                                 
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    printf("Tam biet.\n");
    break;
    default:
    printf("Vui long chi nhap cac so tu 1 den 5.\n");
}
}while(n != 6);
return 0;
}
