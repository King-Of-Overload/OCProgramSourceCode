//
//  main.m
//  BNRPersonOverride
//对象实例变量及属性
//  Created by Alan Lu on 16/2/4.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import"BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个数组，用来包含多个BNREmployee对象
        NSMutableArray *employees=[[NSMutableArray alloc] init];
        //创建10个员工对象
        for(int i=0;i<10;i++){
            BNREmployee *zhiyu=[[BNREmployee alloc] init];
            //为实例变量赋值
            zhiyu.weightInKilos=90+i;
            zhiyu.heightInMeters=1.8-i/10.0;
            zhiyu.employeeID=i;
            [employees addObject:zhiyu];
        }
        NSMutableArray *allAssets=[[NSMutableArray alloc] init];
        //创建10个BNRAsset对象
        for(int i=0;i<10;i++){
            BNRAsset *asset=[[BNRAsset alloc] init];
            NSString *currentLabel=[NSString stringWithFormat:@"笔记本电脑 %d",i];
            asset.label=currentLabel;
            asset.resaleValue=350+i*17;
            //生成0至9之间的随机整数(包含0和9)
            NSUInteger randomIndex=random()%[employees count];
            //取出相应的BNREmployee对象
            BNREmployee *randomEmployee=[employees objectAtIndex:randomIndex];
            //将BNRAsset对象赋给该BNREmployee对象
            [randomEmployee addAsset:asset];
            [allAssets addObject:asset];//所有商品
        }
        
        NSLog(@"Employee:%@",employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"所有商品：%@",allAssets);
        NSLog(@"Giving up ownership of arrays");
        allAssets=nil;
        employees=nil;
    }
    sleep(100);
    return 0;
}
