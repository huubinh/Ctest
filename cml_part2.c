#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include "DebugPrintf/debug_printf.h"
#include "libfdr/jrb.h"
#include "igraph/igraph.h"


int main(int argc, char *argv[]){
    FILE* file;
    int m;
    char namesp[31];
    int id;
if((strcmp(argv[1],"-t"))==0){
    puts("C-Advanced, HK20152");
    return 0;
}

if((strcmp(argv[1],"-s"))==0){
if((file = fopen(argv[2], "r"))==NULL){
    printf("Can't open file.\n");
    exit(-1);
}
fscanf(file, "%d", &m);
for(int i=0; i<m;i++){
    fscanf(file, "%s %d", namesp, &id);
    printf("%s %d\n", namesp, id);
}
return 0;
}



    return 0;
}