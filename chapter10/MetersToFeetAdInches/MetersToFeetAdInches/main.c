//
//  main.c
//  MetersToFeetAdInches
//引入传递参数的函数
//  Created by Mac on 16/2/2.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>
#include<math.h>

void metersToFeetAndInches(double meters,unsigned int *ftPtr,double *inPtr){
    //这个函数假定meters的值是非负数
    //将meters变量的值转换为feet的值，类型为浮点数
    double rawFeet=meters*3.281;
    //计算类型为无符号的整形feet变量的值
    unsigned int feet=(unsigned int)floor(rawFeet);//向下取整
    //将feet变量的值3存储在提供的地址里
    printf("将%u 存储在地址%p\n",feet,ftPtr);
    *ftPtr=feet;
    
    //计算英尺
    double fractionalFoot=rawFeet-feet;
    double inches=fractionalFoot*12.0;
    
    //将inches变量的值保存到传入的地址当中
    printf("将%.2f 存入到地址:%p\n",inches,inPtr);
    *inPtr=inches;
}

int main(int argc, const char * argv[]) {
    double meters=3.0;
    unsigned int feet;
    double inches;
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f米等于%d英尺等于%.1f英寸",meters,feet,inches);
    return 0;
}
