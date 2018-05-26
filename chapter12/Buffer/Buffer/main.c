//
//  main.c
//  Buffer
//堆示例
//  Created by Mac on 16/2/2.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>
#include<stdlib.h>

//定义人的结构体
typedef struct{
    float heightInMeters;//身高
    int weightInKilos;//体重
} Person;
//计算身高比重
float bodyMassIndex(Person *p){
    return p->weightInKilos/(p->heightInMeters*p->heightInMeters);
}


int main(int argc, const char * argv[]) {
    //为一个Person结构分配内存
    Person *zhiyu=(Person *)malloc(sizeof(Person));
    //赋值
    zhiyu->weightInKilos=96;
    zhiyu->heightInMeters=1.7;
    
    //计算并输出身高比重
    float zhiyuBMI=bodyMassIndex(zhiyu);
    printf("止鱼的身高比%f\n",zhiyuBMI);
    
    //用完后释放内存，使之可以重用
    free(zhiyu);
    //将指针变量赋为空
    zhiyu=NULL;
    return 0;
}
