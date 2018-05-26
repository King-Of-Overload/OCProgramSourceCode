//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding
-(void)setPurchaseSharePrice:(float)p{
    _purchaseSharePrice=p;
}

-(float)purchaseSharePrice{
    return _purchaseSharePrice;
}

-(void)setCurrentSharePrice:(float)c{
    _currentSharePrice=c;
}

-(float)currentSharePrice{
    return _currentSharePrice;
}

-(void)setNumberOfShares:(int)n{
    _numberOfShares=n;
}

-(int)numberOfShares{
    return _numberOfShares;
}

-(float)costInDollars{
    return _purchaseSharePrice*_numberOfShares;
}

-(float)valueInDollars{
    return _currentSharePrice*_numberOfShares;
}

@end
