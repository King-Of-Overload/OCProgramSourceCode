//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Alan Lu on 16/2/5.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@implementation BNRPortfolio
-(void)setUnchangeArray:(NSArray *)unchangeArray{
    _holdings=[unchangeArray mutableCopy];
}

-(NSArray *)unchangeArray{
    return [_holdings copy];
}


-(void)addAttributes:(BNRStockHolding *)attrs{
    if(!_holdings){//为空
        //创建数组
        _holdings=[[NSMutableArray alloc] init];
    }
    [_holdings addObject:attrs];
}

-(void)removeAttributes:(int)index{
    if([_holdings count]>=index){
        [_holdings removeObjectAtIndex:index];
    }else{
        NSLog(@"哥们，你要的这是个什么人啊");
    }
}

-(float)totalValue{
    float sum=0;
    for(BNRStockHolding *b in _holdings){
        sum+=[b valueInDollars];
    }
    return sum;
}



@end
