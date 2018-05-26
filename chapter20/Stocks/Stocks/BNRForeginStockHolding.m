//
//  BNRForeginStockHolding.m
//  Stocks
//
//  Created by Alan Lu on 16/2/4.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNRForeginStockHolding.h"

@implementation BNRForeginStockHolding

-(float) costInDollars{
    float prePrice=[super costInDollars];
    return prePrice*[self conversionRate];
}

-(float) valueInDollars{
    float prePrice=[super valueInDollars];
    return prePrice*self.conversionRate;
}

@end
