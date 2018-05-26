//
//  main.m
//  BMITime
//第一个自定义类
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建BNRPerson实例
        BNRPerson *zhiyu=[[BNRPerson alloc] init];
        //使用set方法为其赋值
        [zhiyu setWeightInKilos:96];//设置体重
        [zhiyu setHeightInMeters:1.7];//设置身高
        //使用get方法打印出实例变量的值
        float height=[zhiyu heightInMeters];
        int weight=[zhiyu weightInKilos];
        NSLog(@"止鱼的身高是%.2f,体重是%d\n",height,weight);
        //使用自定义方法打印出bmi的值
        float bmi=[zhiyu bodyMassIndex];
        NSLog(@"止鱼的体重比例是：%f",bmi);
        
    }
    return 0;
}
