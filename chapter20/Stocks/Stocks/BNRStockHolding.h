//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

-(void)setPurchaseSharePrice:(float)p;
-(float)purchaseSharePrice;

-(void)setCurrentSharePrice:(float)c;
-(float)currentSharePrice;

-(void)setNumberOfShares:(int)n;
-(int)numberOfShares;

-(float)costInDollars;
-(float)valueInDollars;


@end
