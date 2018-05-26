//
//  BNRPerson.m
//  BNRPersonOverride
//
//  Created by Alan Lu on 16/2/4.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

-(float) bodyMassIndex{
    float h=[self heightInMeters];
    return [self weightInKilos]/(h*h);
}
@end
