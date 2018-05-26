//
//  main.c
//  Addresses
//地址与指针
//  Created by Mac on 16/2/2.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i=17;
    printf("i的地址是：%p\n",&i);//取i的内存地址
    printf("这个函数的起始地址是:%p\n",&main);
    printf("指针的长度：%zu.\n",sizeof(int *));
    return 0;
}
