//
//  main.m
//  Stocks
//继承类
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeginStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding *s1=[[BNRStockHolding alloc] init];
        NSMutableArray *myArray=[[NSMutableArray alloc] init];
        [s1 setPurchaseSharePrice:2.30];
        [s1 setCurrentSharePrice:4.50];
        [s1 setNumberOfShares:40];
        [myArray addObject:s1];
        BNRStockHolding *s2=[[BNRStockHolding alloc] init];
        [s2 setPurchaseSharePrice:12.19];
        [s2 setCurrentSharePrice:10.56];
        [s2 setNumberOfShares:90];
        [myArray addObject:s2];
        BNRStockHolding *s3=[[BNRStockHolding alloc] init];
        [s3 setPurchaseSharePrice:45.10];
        [s3 setCurrentSharePrice:49.51];
        [s3 setNumberOfShares:210];
        [myArray addObject:s3];
        
        //继承类的实现
        BNRForeginStockHolding *bs=[[BNRForeginStockHolding alloc] init];//实例化子类
        [bs setPurchaseSharePrice:2.30];
        [bs setCurrentSharePrice:4.50];
        [bs setNumberOfShares:40];
        bs.conversionRate=0.94;
        [myArray addObject:bs];
        for(int i=0;i<[myArray count];i++){
            BNRStockHolding *s=myArray[i];
            NSLog(@"第%d个股票的花费为%f,收入为%f\n",i+1,[s costInDollars],[s valueInDollars]);
        }
    }
    return 0;
}
