//
//  BNRAsset.h
//  BNRPersonOverride
//
//  Created by Alan Lu on 16/2/4.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;
@interface BNRAsset : NSObject
@property (nonatomic,copy) NSString *label;//商品名,可以拷贝
@property (nonatomic) unsigned int resaleValue;//价格
@property (nonatomic,weak) BNREmployee *holder;//弱引用
@end
