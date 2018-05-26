//
//  BNRAppliance.m
//  Appliances
//init
//  Created by Alan Lu on 16/2/19.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

-(instancetype) initWithProductName:(NSString *)pn{
    //调用NSObject的init方法
    self=[super init];
    if(self){//是否返回非nil的值
        //为_productName赋值
        self.prouctName=[pn copy];
        //为_voltage赋初值
        self.voltage=120;
        //_voltage=120;
    }
    return self;
}

-(instancetype) init{
    return [self initWithProductName:@"Unknown"];
}

-(NSString *) description{
    return [NSString stringWithFormat:@"<%@: %d volts>",self.prouctName,self.voltage];
}

@end
