//
//  BNREmployee.m
//  BNRPersonOverride
//
//  Created by Alan Lu on 16/2/4.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

-(double)yearsOfEmpolyment{
    //先判断是否拥有一个非空的hireDate
    if(self.hireDate){
        //NSTimeInterval是double类型
        NSDate *now=[NSDate date];
        NSTimeInterval secs=[now timeIntervalSinceDate:self.hireDate];
        return secs/31557600.0;//每年的秒数
    }else{
        return 0;
    }
}

//假设所有员工的BMI都是19，这时需要覆盖父类的方法
-(float)bodyMassIndex{
    return 19.0;
}
@end
