//
//  BNRAppliance.h
//  Appliances
//
//  Created by Alan Lu on 16/2/19.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject

@property (nonatomic,copy) NSString *prouctName;
@property (nonatomic) int voltage;

//自定义初始化类方法
-(instancetype) initWithProductName:(NSString *) pn;

@end
