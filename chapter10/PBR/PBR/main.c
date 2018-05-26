//
//  main.c
//  PBR
//modf()函数使用，返回一个浮点数的整数与小数部分
//  Created by Mac on 16/2/2.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>
#include<math.h>
int main(int argc, const char * argv[]) {
    double pi=3.14;
    double integerPart;//整数部分
    double fractionPart;//小数部分
    //将整数部分的地址作为实参传入
    fractionPart=modf(pi, &integerPart);//获取小数部分
    //获取整数地址上的值
    printf("整数部分=%.0f, 小数部分=%.2f\n",integerPart,fractionPart);
    return 0;
}
