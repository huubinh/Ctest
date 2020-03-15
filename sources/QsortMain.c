#include <stdio.h>
#include <stdlib.h>
#include "header/Qsort.h"

int main()
{
    FILE*f;
    if ((f=fopen("/home/binh/CTEST/sources/Listofnumbers.txt","r"))==NULL)
    {
        printf("Can not open file\n");
        exit(-1);
    }
    int n;
    fscanf(f,"%d",&n);
    int i;
    int *arr = (int *)malloc(sizeof(int) * n);
    for (i = 0; i < n; i++)
    {
        fscanf(f,"%d",&arr[i]);
    }
    printf("Original array: ");
    display(arr, n); 
    quickSort(arr, 0, n - 1);
    printf("Sorted array: ");
    display(arr, n);
    getchar();
    return 0;
}
