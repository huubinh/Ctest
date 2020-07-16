#include "fields.h"
#include "DebugPrintf/debug_printf.h"
#include <stdio.h>
#include <string.h>
#include <ctype.h>
char* trim(char* token){   //lọai bỏ khoảng trắng thừa đầu cuối của chuỗi
     while (isspace((unsigned)token[0])) token++;  
     while (isspace((unsigned)token[strlen(token)-1])) 
            token[strlen(token)-1] = '\0';
     for ( int i=0; i<strlen(token); i++ )
            token[i] = toupper(token[i]);
     return strdup(token);
    }
int main(){
  IS is;
    is = new_inputstruct("is = new_inputstruct(/home/boong/Ctest/test2015/test.txt");
    get_line(is);   
        printfInfo("%s\n",is->text1);           
        printfInfo("%s\n",is->fields[0]);
        if ( is->NF >2 )
            printf("%d\n",atoi(is->fields[2]));
    get_line(is); 
    get_line(is);
        printfInfo("%s\n",is->text1);           
        printfInfo("%s\n",is->fields[0]);
        if ( is->NF >2 )
            printf("%d\n",atoi(is->fields[2]));
    jettison_inputstruct(is);

    char a[30];
    gets(a);
    printfInfo("%s",trim(a));

    
    return 0;
}