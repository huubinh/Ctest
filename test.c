#include <stdio.h>

#include "c-vector/cvector.h"

typedef enum {
  int_tag,
  double_tag
} Tags;

typedef int (*predicate_t)(void*, Tags);

/*
  1. Khai báo các mệnh đề
*/
int abs_i(void* value, Tags tag) {
    switch (tag){
      case (int_tag):
         if (*(int*)value < 0) {
         return -(*(int*)value);
         }
         return (*(int*)value);
      case (double_tag):
         if (*(double*)value < 0) {
         return -(*(double*)value);
         }
         return (*(double*)value);
    }
}

int is_even(void* value, Tags tag) {
   switch (tag){
    case (int_tag):
      if (abs_i(value,int_tag) % 2 == 0) {
      return 1;
      }
      return 0;
    default:
      return 0;
   }
}

int is_negative(void* value, Tags tag) {
  switch (tag){
    case (int_tag):
      if ((*(int*)value) < 0) {
      return 1;
      }
      return 0;
    case (double_tag):
      if ((*(double*)value) < 0) {
      return 1;
      }
      return 0;
   }
}

int count_if(void* data, Tags tag, predicate_t p) {
  /*
    2. Hoàn thiện nội dung hàm count_if
  */
int cc = 0;
    switch(tag){
      case (int_tag):
        for (int i = 0; i < cvector_size(data); ++i) {
        if ( p(data+i,int_tag) ) {
        ++cc;
        }
        }
        return cc;
      case (double_tag):
        for (int i = 0; i < cvector_size(data); ++i) {
        if ( p(data+i,double_tag) ) {
        ++cc;
        }
        }
        return cc;
    }
}

int main() {
  int a[] = { -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 21};
  int n = sizeof(a) / sizeof(a[0]);
  cvector_vector_type(int) vi = NULL;
  for (int i = 0; i < n; ++i) {
    cvector_push_back(vi, a[i]);
  }
  double b[] = { -1.5, 3, -2.0, 6, -8, 10, -22.5, 11, -0.001 };
  int m = sizeof(b) / sizeof(b[0]);
  cvector_vector_type(double) vd = NULL;
  for (int i = 0; i < m; ++i) {
    cvector_push_back(vd, b[i]);
  }
  printf("%d", count_if((void*)vi, int_tag, is_even));
  printf(" %d", count_if((void*)vi, int_tag, is_negative));
  printf(" %d", count_if((void*)vd, double_tag, is_negative));
}
