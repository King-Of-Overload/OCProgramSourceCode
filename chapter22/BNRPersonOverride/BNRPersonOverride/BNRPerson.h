//
//  BNRPerson.h
//  BNRPersonOverride
//
//  Created by Alan Lu on 16/2/4.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

    //BNRPerson类有两个属性
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

//BNRPerson类计算比例的方法
-(float)bodyMassIndex;

@end
