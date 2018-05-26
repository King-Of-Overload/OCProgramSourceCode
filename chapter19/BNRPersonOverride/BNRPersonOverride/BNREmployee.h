//
//  BNREmployee.h
//  BNRPersonOverride
//
//  Created by Alan Lu on 16/2/4.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

-(double) yearsOfEmpolyment;

@end
