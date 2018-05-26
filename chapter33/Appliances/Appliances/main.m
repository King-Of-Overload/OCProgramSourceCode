//
//  main.m
//  Appliances
//
//  Created by Alan Lu on 16/2/19.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRAppliance *a=[[BNRAppliance alloc] init];
        NSLog(@"a is %@",a);
        [a setProuctName:@"洗衣机"];
        [a setVoltage:240];
        NSLog(@"a is %@",a);
    }
    return 0;
}
