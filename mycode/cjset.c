#include <stddef.h>
#include <string.h>
#include <stdlib.h>
#include "cjset.h"
#include "libfdr/jval.h"

int jset_insert_str(JRB tree, char *key, Jval val) {
    if (jrb_find_str(tree,key)==NULL){
    	char *s=(char*)malloc(sizeof(key));
        strcpy(s,key);
        jrb_insert_str(tree,s,val);
        return 1;
        }
        return 0;
}

int jset_update_str(JRB tree, char *key, Jval val) {
    JRB temp =jrb_find_str(tree,key);
    if (temp==NULL){
        return 0;
        }
    temp->val=val;
        return 1;
}

int jset_size(JRB tree) {
    int count=0;
    for(JRB ptr = jrb_first(tree); ptr != jrb_nil(tree); ptr = jrb_next(ptr))
    	count++;
    return count;	
}
