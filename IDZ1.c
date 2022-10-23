#include <stdio.h>
#include <limits.h>

int main()
{
    int N;
    printf("Enter size of array A:\n");
    scanf("%d", &N);
    
    int A[N];
    int i, min_index, min_value = INT_MAX;
    printf("Now input the array elements separated by a space:\n");
    for (i = 0; i < N; i++)
    {
        scanf("%d", &A[i]);
        if (A[i] < min_value) {
            min_value = A[i];
            min_index = i;
        }
    }
    
    int first = A[0];
    int B[N];
    B[0] = min_value;
    for (i = 1; i < N; i++)
    {
        if (i == min_index) {
            B[i] = first;
        }
        else {
            B[i] = A[i];
        }
    }
    
    printf("Array B:\n");
    for (i = 0; i < N; i++)
    {
        printf("%d ", B[i]);
    }
}