//
//  main.m
//  PlistPractice
//
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *ma=[[NSMutableArray alloc] init];
        NSMutableDictionary *dic;
        dic=[NSMutableDictionary dictionary];
        [dic setObject:@"鹿止鱼" forKey:@"name"];//字符串
        NSArray *boyFriends=@[@"Alan",@"John",@"Leon"];
        [dic setObject:boyFriends forKey:@"boyFriend"];//数组
        [dic setObject:@"18" forKey:@"age"];//整数
        [ma addObject:dic];
        [ma writeToFile:@"/tmp/a.plist" atomically:YES];
    }
    return 0;
}
