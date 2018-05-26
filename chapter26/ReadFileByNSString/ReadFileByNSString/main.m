//
//  main.m
//  ReadFileByNSString
//通过NSString读取文件
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError *error;//声明错误指针
        NSString *str=[[NSString alloc] initWithContentsOfFile:@"/tmp/cool.txt" encoding:NSUTF8StringEncoding error:&error];
        if(!str){
            NSLog(@"读取失败：%@",[error localizedDescription]);
        }else{
            NSLog(@"文件内容如下：%@",str);
        }
    }
    return 0;
}
