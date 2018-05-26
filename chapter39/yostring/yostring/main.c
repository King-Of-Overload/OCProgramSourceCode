//
//  main.c
//  yostring
//C字符串
//  Created by Alan Lu on 16/2/20.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>
#include<stdlib.h>//为了能够使用malloc/free
#include <string.h>//为了能够使用strlen

int main(int argc, const char * argv[]) {
    char x=0x21;//字符!
    while (x<=0x7e) {//字符'~'
        printf("%x is%c\n",x,x);
        x++;
    }
    
    //获取指针，指向位于堆中的某块内存，该内存的大小为5个字节
    char *start=malloc(5);//5个字节
    *start='L';//将L存入第一个字节
    *(start+1)='O';
    *(start+2)='V';
    *(start+3)='E';
    *(start+4)='\0';
    printf("%s 有%zu 个字符\n",start,strlen(start));
    //输出第三个字符
    printf("第三个字符是：%c\n",*(start+2));//或者start[2]
    //释放内存，使之能够被重用
    free(start);
    start=NULL;
    return 0;
}
