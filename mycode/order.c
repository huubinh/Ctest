#include <string.h>
#include <stdio.h>
#include "order.h"
#include <stdlib.h>
char buffer[1000];
Bytes *serialize(Order *o){
	char s_total[30];
	sprintf(s_total, "%d", o->total);
	buffer[0]=strlen(o->name);
	sprintf(buffer+1, "%s", o->name);
	buffer[strlen(buffer)]=strlen(s_total);
	sprintf(buffer + 1 + strlen(o->name)+ 1, "%s", s_total);
    Bytes *temp=(Bytes*)malloc(sizeof(Bytes));
    char *dat = (char*)malloc(sizeof(buffer));
    strcpy(dat,buffer);
    temp->dat=dat;
    temp->len=strlen(dat);
    return temp;
}
Order *deserialize(Bytes *buff) {
	int nameLen = buff->dat[0];
	int totalLen = buff->dat[nameLen+1];
	if( nameLen + totalLen + 2 != buff->len) {
		nameLen+=256;
		totalLen = buff->dat[nameLen+1];
	}
	char *name = (char*)malloc(nameLen+1);
	char *total = (char*)malloc(totalLen+1);
   
    memcpy(name,(buff->dat)+1,nameLen);
    memcpy(total,(buff->dat)+1+nameLen+1,totalLen);

    Order *sample=(Order*)malloc(sizeof(Order));
    sample->name=name;
    sample->total=atoi(total);
    return sample;
}