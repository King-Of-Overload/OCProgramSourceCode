//
//  main.m
//  Constants
//常量
//  Created by Alan Lu on 16/2/16.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\u03c0 is %f",M_PI);
        NSLog(@"%d更大",MAX(10,12));//#define指令
        
        //获取用户当前区域的货币
        NSLocale *here=[NSLocale currentLocale];
        //NSString *currency=[here objectForKey:@"currency"];
        NSString *currency=[here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"当前区域使用的货币是：%@",currency);
    }
    return 0;
}
