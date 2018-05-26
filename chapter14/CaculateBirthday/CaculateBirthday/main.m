//
//  main.m
//  CaculateBirthday
//计算从出生到现在的时间间隔
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *myDate=[[NSDate alloc] init];
        NSDateComponents *comps=[[NSDateComponents alloc] init];//实例化日期组件用来创建一个日期对象
        [comps setYear:1995];
        [comps setMonth:4];
        [comps setDay:20];
        NSCalendar *g=[[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
        NSDate *dateOfBirth=[g dateFromComponents:comps];
        double borderTime=[myDate timeIntervalSinceDate:dateOfBirth];
        NSLog(@"出生间隔:%f",borderTime);
    }
    return 0;
}
