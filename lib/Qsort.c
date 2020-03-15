#include <stdio.h>

void display(int arr[], int n)
{
    int i;
    for (i = 0; i < n; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

void swap(int *first, int *second)
{
    int temp = *first;
    *first = *second;
    *second = temp;
}

int partition(int arr[], int lower, int upper)
{
    printf("lower = %d  upper = %d\n", lower, upper);
    int i = (lower - 1);
    int pivot = arr[upper]; 
    int j;
    for (j = lower; j < upper; j++)
    {
        if (arr[j] <= pivot)
        { 
            i++; 
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[upper]); 
    return (i + 1);
}
void quickSort(int arr[], int lower, int upper)
{
    if (upper > lower)
    {
        int partitionIndex = partition(arr, lower, upper);
        quickSort(arr, lower, partitionIndex - 1);
        quickSort(arr, partitionIndex + 1, upper);
    }
}