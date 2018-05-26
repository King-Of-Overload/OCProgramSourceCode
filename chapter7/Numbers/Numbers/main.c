//
//  main.c
//  Numbers
//
//  Created by Mac on 16/2/2.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>
#include<stdlib.h>

int main(int argc, const char * argv[]) {
//    long x=255;
//    printf("x is %ld.\n",x);
//    printf("In octal,x is %lo.\n",x);//八进制输出
//    printf("In hexadecimal is %lx.\n",x);//十六进制输出
//    return 0;
    unsigned long x=255;
    printf("x is %lu.\n",x);
    printf("In octal,x is %lo.\n",x);
    printf("In hexadecimal,x is %lx.\n",x);
    //计算机绝对值
    printf("3*3+5*2=%d\n",3*3+5*2);
    printf("11/3=%d 余数是:%d\n",11/3,11%3);
    printf("11/3.0=%f\n",11/(float)3);
    printf("-5的绝对值是 %d\n",abs(-5));
    return 0;
}
