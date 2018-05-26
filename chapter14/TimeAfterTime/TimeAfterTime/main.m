//
//  main.m
//  TimeAfterTime
//消息的应用
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //计算当前时间10万秒之后的日期，单个实参
        NSDate *now=[NSDate date];
        NSDate *later=[now dateByAddingTimeInterval:100000];
        NSLog(@"100000秒之后的时间是：%@",later);
        
        //实参
        NSCalendar *cal=[NSCalendar currentCalendar];//获取cal实例
        NSLog(@"我的日历是：%@",[cal calendarIdentifier]);//获取日历类型
        
       //多个实参
        unsigned long day=[cal ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:now];
        NSLog(@"今天是这个月的第%lu天",day);
        
        //消息的嵌套,返回1970年至今的经过的秒数
        double seconds=[[NSDate date] timeIntervalSince1970];
        NSLog(@"1970年至今:%f",seconds);
        
        //alloc与init必须以嵌套的形式连续发送消息，每个类都有一个alloc方法用来创建该对象，但该对象必须经过初始化才可以接收消息
        //因此需要同时调用init方法初始化实例对象
        //e.g.通过发送alloc与init消息来创建一个NSDate方法
        NSDate *createdByAllocAdInit=[[NSDate alloc] init];
        NSLog(@"这个对象的指针地址是%p\n",createdByAllocAdInit);
        NSLog(@"日期是：%@",createdByAllocAdInit);
        
        //注：在OC中，可以向nil（NULL指针发送消息，但什么也不会发生）
        //若向某个对象发送消息却没有得到预期结果，就要检查这个接收方是否为空
        //向nil发送消息，得到的返回值没有任何意义,若期望为数字，则为0，若为结构或者实体，无法预期
        
        
        //有时候声明指针的时候并不知道该指针的具体类型，这个时候可以使用 id now，没有*号因为使用id时就隐含使用*
    }
    return 0;
}
