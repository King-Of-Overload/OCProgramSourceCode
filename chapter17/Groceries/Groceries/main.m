//
//  main.m
//  Groceries
//输出购物清单
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *bread=@"一块面包(Loaf of bread)";
        NSString *milk=@"一瓶牛奶(Container of milk)";
        NSString *butter=@"一片黄油(Stick of butter)";
        NSMutableArray *mArray=[[NSMutableArray alloc] init];//实例化可变数组
        [mArray addObject:bread];
        [mArray addObject:milk];
        [mArray addObject:butter];
        NSLog(@"我的购物清单是：");
        for(NSString *mString in mArray){
            NSLog(@"%@\n",mString);
        }
    }
    return 0;
}
