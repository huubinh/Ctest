#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "DebugPrintf/debug_printf.h"
#include "libfdr/jrb.h"
#include "igraph/igraph.h"

int main( int argc, char* argv[] ) {
    
    if ( strcmp(argv[1],"-h") == 0 ) {   //function 1
        puts("C-Advanced, HK20152");
        return 0;
    }
///////////////////
    int menu;
    do{
        printf("MENU\n");
        printf("1.\n");
        printf("2.\n");
        printf("3.\n");
        printf("4.\n");
        printf("5.\n");
        printf("6.Thoat\n");
        printf("Vui long chon chuc nang: ");
        scanf("%d%*c",&menu);

        switch (menu) {
            case 1:

            break;
            case 2:

            break;
            case 3:

            break;
            case 4:

            break;
            case 5:

            break;
            case 6:
                printf("Tam biet\n");
            break;
            default: printf("Vui long chon 1, 2, 3, 4, 5 hoac 6.\n");
        }
    } while ( menu != 6 );