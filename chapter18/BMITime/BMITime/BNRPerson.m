//
//  BNRPerson.m
//  BMITime
//实现类方法
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

-(float)heightInMeters{
    return _heightInMeters;
}

-(void)setHeightInMeters:(float)h{
    _heightInMeters=h;
}

-(int)weightInKilos{
    return _weightInKilos;
}

-(void)setWeightInKilos:(int)w{
    _weightInKilos=w;
}

-(float)bodyMassIndex{
    return _weightInKilos/(_heightInMeters*_heightInMeters);
}

@end
