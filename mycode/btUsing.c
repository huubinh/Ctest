#include <stdlib.h>
#include "cmake-btree/inc/btree.h"

typedef struct {
	char *name;
	int total;
} Order;

char buffer[1000];
void convert(Order *o) {
	char s_total[30];
	sprintf(s_total, "%d", o->total);
	buffer[0]=strlen(o->name);
	sprintf(buffer+1, "%s", o->name);
	buffer[strlen(buffer)]=strlen(s_total);
	sprintf(buffer + 1 + strlen(o->name)+ 1, "%s", s_total);
}
int main(int argc, char *argv[]) {
	btinit();
}