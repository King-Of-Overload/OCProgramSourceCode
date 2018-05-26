//
//  main.c
//  BMICalc
//结构体示例
//  Created by Mac on 16/2/2.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>
//struct Person{
//    float heightInMeters;//身高
//    float weightInKilos;//体重
//};

typedef struct{
    float heightInMeters;//身高
    int weightInKilos;//体重
} Person;

float bodyMassIndex(Person p){
    return p.weightInKilos/(p.heightInMeters*p.heightInMeters);
}

int main(int argc, const char * argv[]) {
    Person zhiyu;
    zhiyu.heightInMeters=1.7;
    zhiyu.weightInKilos=96;
    
    Person linger;
    linger.heightInMeters=1.97;
    linger.weightInKilos=84;
    
    float bmi;
    bmi=bodyMassIndex(zhiyu);
    printf("止鱼的体重比例是%.2f\n",bmi);
    bmi=bodyMassIndex(linger);
    printf("灵儿的体重比例是%.2f",bmi);
    return 0;
}
