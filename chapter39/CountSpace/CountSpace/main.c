//
//  main.c
//  CountSpace
//
//  Created by Alan Lu on 16/2/20.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>
#include <string.h>
int spaceCount(const char* c){
    int count=0;
    for(int i=0;i<strlen(c);i++){
        if(c[i]==' '){
            count++;
        }
        i++;
    }
    return count;
}

int main(int argc, const char * argv[]) {
    const char *sentence="He was not in the cab";
    printf("有%d个空格",spaceCount(sentence));
    return 0;
}
