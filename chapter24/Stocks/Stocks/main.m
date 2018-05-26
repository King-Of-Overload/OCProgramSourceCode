//
//  main.m
//  Stocks
//继承类
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeginStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding *s1=[[BNRStockHolding alloc] init];
        NSMutableArray *myArray=[[NSMutableArray alloc] init];
        BNRPortfolio *b=[[BNRPortfolio alloc] init];
        [s1 setPurchaseSharePrice:2.30];
        [s1 setCurrentSharePrice:4.50];
        [s1 setNumberOfShares:40];
        [myArray addObject:s1];
        [b addAttributes:s1];
        BNRStockHolding *s2=[[BNRStockHolding alloc] init];
        [s2 setPurchaseSharePrice:12.19];
        [s2 setCurrentSharePrice:10.56];
        [s2 setNumberOfShares:90];
        [myArray addObject:s2];
        [b addAttributes:s2];
        //继承类的实现
        BNRForeginStockHolding *bs=[[BNRForeginStockHolding alloc] init];//实例化子类
        [bs setPurchaseSharePrice:2.30];
        [bs setCurrentSharePrice:4.50];
        [bs setNumberOfShares:40];
        bs.conversionRate=0.94;
        [myArray addObject:bs];
        [b addAttributes:bs];
        
        //股权持有数量前三名的股权所有人
        NSSortDescriptor *des=[NSSortDescriptor sortDescriptorWithKey:@"_numberOfShares" ascending:false];
        NSArray *unchange=[b unchangeArray];
        [unchange sortedArrayUsingDescriptors:@[des]];
        NSArray *a=[[NSArray alloc] init];
        for(int i=0;i<=2;i++){
            [a arrayByAddingObject:unchange[i]];
        }
        NSLog(@"前三名：%@",a);
        a=nil;
        NSLog(@"总价格是:%f",[b totalValue]);
        NSLog(@"总的情况：%@",[b unchangeArray]);
        [b removeAttributes:1];
         NSLog(@"删除后的情况：%@",[b unchangeArray]);
        
        

    }
    return 0;
}
