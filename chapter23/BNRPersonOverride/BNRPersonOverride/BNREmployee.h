//
//  BNREmployee.h
//  BNRPersonOverride
//
//  Created by Alan Lu on 16/2/4.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;//告诉程序暂时不要理会这个类，不要报错
@interface BNREmployee : BNRPerson
{
   // NSMutableArray *_assets;//商品对象
}

@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic)NSArray *assets;

-(double) yearsOfEmpolyment;
-(void) addAsset:(BNRAsset *)a;//添加商品
-(unsigned int) valueOfAssets;//返回商品价格
-(void)removeAttrs:(int)index;//移除某个对象

@end
