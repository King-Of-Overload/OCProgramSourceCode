//
//  main.m
//  StockZ
//p-list格式
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks=[[NSMutableArray alloc] init];
        NSMutableDictionary *stock;
        stock=[NSMutableDictionary dictionary];
        [stock setObject:@"鹿止鱼" forKey:@"luzhiyu"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stocks addObject: stock];
        
        stock=[[NSMutableDictionary alloc] init ];
        [stock setObject:@"宋芸儿" forKey:@"luzhiyu"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
        //读取p-list文件
        NSArray *stockList=[NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        for(NSDictionary *d in stockList){
            NSLog(@"我有%@个%@",[d objectForKey:@"shares"],[d objectForKey:@"luzhiyu"]);
        }
        
    }
    return 0;
}
