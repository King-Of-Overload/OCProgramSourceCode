//
//  BNRPerson.h
//  BMITime
//
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject
{
    //BNRPerson有两个实例变量
    float _heightInMeters;//身高
    int _weightInKilos;//体重
}

//该类拥有可以读取并设置实例变量的方法
-(float)heightInMeters;//获取身高
-(void)setHeightInMeters:(float)h;//设置身高
-(int)weightInKilos;//获取体重
-(void)setWeightInKilos:(int)w;//设置体重
//该类有计算Body Mass Index体重比的方法
-(float)bodyMassIndex;



@end
