//
//  main.c
//  Turky
//
//  Created by Mac on 16/2/1.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    float weight;//声明变量
    weight=14.2;//赋值
    printf("这只火鸡重量是：%f \n",weight);//输出
    float cookingTime;
    cookingTime=15.0+15.0*weight;
    printf("需要烹饪 %f 分钟\n",cookingTime);
    return 0;
}