//
//  main.m
//  TimesTwo
//对象与内存
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSDate *currentTime=nil;
//        NSLog(@"当前的时间值是：%p",currentTime);
        
        //保存对象指针
        NSDate *currentTime=[NSDate date];
        NSLog(@"currentTime's value is %p",currentTime);
        
        NSDate *startTime=currentTime;//保存第一个指针
        sleep(2);
        currentTime=[NSDate date];//在堆上实例化第二个NSDate对象
        NSLog(@"当前的NSDate对象是：%p",currentTime);
        NSLog(@"原来对象的地址是：%p",startTime);
        
        //销毁创建的currentTime对象
        currentTime=nil;
        NSLog(@"currentTime的值是：%p",currentTime);
    }
    return 0;
}
