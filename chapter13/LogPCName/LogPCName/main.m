//
//  main.m
//  LogPCName
//打印出自己计算机的名字
//  Created by Mac on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *myHost=[NSHost currentHost];
        NSString *myString=[myHost localizedName];
        NSLog(@"本台mac计算机的主机名是：%@",myString);
    }
    return 0;
}
