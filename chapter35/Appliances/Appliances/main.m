//
//  main.m
//  Appliances
//KVC
//  Created by Alan Lu on 16/2/19.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRAppliance *a=[[BNRAppliance alloc] init];
        NSLog(@"a is %@",a);
        //[a setProductName:@"洗衣机"];
        [a setValue:@"洗衣机" forKey:@"productName"];
        [a setVoltage:240];
        NSLog(@"a is %@",a);
        
        //KVC读取实例变量
        NSLog(@"产品名是：%@",[a valueForKey:@"productName"]);
    }
    return 0;
}
