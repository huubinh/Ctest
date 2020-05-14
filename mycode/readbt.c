#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "cmake-btree/inc/btree.h"
#define MAX 255

typedef struct {
	char *mo_ta;
	int tong;
} KhoanThanhToan;
KhoanThanhToan *deserialize(char *buff);
int main() {
	btinit();
	BTA *take;
	char filename[] = "/home/binh/CAdvanced/mycode/test.bt";
    if ((take = btopn(filename, 0, FALSE)) == NULL) {
    printf("Can not open the file");
    return -1;
  }
    btpos(take, ZSTART);
    int temp = 0;
    char key[MAX];
    char value[MAX];
    int sum = 0;
    KhoanThanhToan *tmp;
    while (btseln(take,key,value,MAX,&temp) == 0) {
    tmp = deserialize(value);
    sum += tmp->tong;
}
    printf("%d",sum);
    free(tmp);
    btcls(take);
    return 0;
}

KhoanThanhToan *deserialize(char *buff) {
	int nameLen = buff[0];
	int totalLen = buff[nameLen+1];
	if( nameLen + totalLen + 2 != strlen(buff)) {
		nameLen+=256;
		totalLen = buff[nameLen+1];
	}
	char *name = (char*)malloc(nameLen+1);
	char *total = (char*)malloc(totalLen+1);
   
    memcpy(name,buff+1,nameLen);
    memcpy(total,buff+1+nameLen+1,totalLen);

    KhoanThanhToan *sample=(KhoanThanhToan*)malloc(sizeof(KhoanThanhToan));
    sample->mo_ta=name;
    sample->tong=atoi(total);
    return sample;
}