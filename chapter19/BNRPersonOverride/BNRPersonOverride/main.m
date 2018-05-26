//
//  main.m
//  BNRPersonOverride
//属性实例，重写BNRPerson类
//  Created by Alan Lu on 16/2/4.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import"BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        BNRPerson *zhiyu=[[BNRPerson alloc] init];
//        [zhiyu setWeightInKilos:96];
//        [zhiyu setHeightInMeters:1.6];
//        NSLog(@"止鱼的身高比是：%f",[zhiyu bodyMassIndex]);
        
        //使用dot notation进行存取方法的调用
//        BNRPerson *zhiyu=[[BNREmployee alloc] init];
//        zhiyu.weightInKilos=96;
//        zhiyu.heightInMeters=1.8;
//        float height=zhiyu.heightInMeters;
//        float weight=zhiyu.weightInKilos;
//        NSLog(@"止鱼身高:%f,体重：%f\n",height,weight);
//        
//        //使用自定义方法打印出相应的值
//        float bmi=[zhiyu bodyMassIndex];
//        NSLog(@"止鱼身高比是：%.2f",bmi);
        
        //利用子类实例
        
        //创建一个BNREmpolyee类的实例
        BNREmployee *zhiyu=[[BNREmployee alloc] init];
        //赋值
        zhiyu.weightInKilos=96;
        zhiyu.heightInMeters=1.6;
        zhiyu.employeeID=12;
        zhiyu.hireDate=[NSDate dateWithNaturalLanguageString:@"Aug 2nd,2010"];
        //使用取方法打印出数据
        float height=zhiyu.heightInMeters;
        int weight=zhiyu.weightInKilos;
        NSLog(@"员工%u在%@被雇佣\n",zhiyu.employeeID,zhiyu.hireDate);
        
        //使用自定义方法打印出身高比
        float bmi=[zhiyu bodyMassIndex];
        double years=[zhiyu yearsOfEmpolyment];
        NSLog(@"身高比是：%.2f，已经工作了%.2f年了\n",bmi,years);
    }
    return 0;
}
