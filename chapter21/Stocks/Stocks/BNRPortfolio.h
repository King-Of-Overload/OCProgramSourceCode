//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Alan Lu on 16/2/5.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject
{
    NSMutableArray *_holdings;
}
@property(nonatomic,copy) NSArray *unchangeArray;


-(void)addAttributes:(BNRStockHolding *)attrs;//将类对象添加到可变数组当中

-(void)removeAttributes:(int) index;//移除元素

-(float)totalValue;//计算价钱

@end
