//
//  main.m
//  DateList
//NSArray
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建三个NSDate对象
        NSDate *now=[NSDate date];
        NSDate *tomorrow=[now dateByAddingTimeInterval:24.0*60.0*60.0];
        NSDate *yesterday=[now dateByAddingTimeInterval:-24.0*60.0*60.0];
        //创建一个NSArray数组包含这三个NSDate对象
        NSArray *dateList=@[now,tomorrow,yesterday];
        
        //输出其中的两个对象
        NSLog(@"第一个元素是：%@",dateList[0]);
        NSLog(@"第三个元素是：%@",dateList[2]);
        //包含多少个对象
        NSLog(@"数组里有%lu",[dateList count]);
        
        
        //采用数组遍历的方式进行输出
        NSUInteger dateCount=[dateList count];
        for(int i=0;i<dateCount;i++){
            NSDate *d=dateList[i];
            NSLog(@"Here is a date:%@",d);
        }
        
        //利用快速枚举（增强型for循环）遍历数组
        for(NSDate *md in dateList){
            NSLog(@"Here is a date:%@",md);
        }
        
        //利用可变数组改写
        NSDate *mNow=[NSDate date];
        NSDate *mTomorrow=[now dateByAddingTimeInterval:24.0*60.0*60.0];
        NSDate *mYesterday=[now dateByAddingTimeInterval:-24.0*60.0*60.0];
        NSMutableArray *mDateList=[[NSMutableArray alloc] init];
        //将两个NSDate对象加入新创建的数组
        [mDateList addObject:mNow];
        [mDateList addObject:mTomorrow];
        //将mYesterday插入到起始位置
        [mDateList insertObject:mYesterday atIndex:0];
        //遍历数组
        for(NSDate *md in mDateList){
            NSLog(@"%@",md);
        }
        //删除yesterday指针
        [mDateList removeObjectAtIndex:0];
        NSLog(@"现在第一个元素是：%@",mDateList[0]);
        
        
        //旧的数组添加方法
        NSArray *mArray=[NSArray arrayWithObjects:mNow,mTomorrow,mYesterday, nil];
        NSLog(@"第一个元素是：%@",[mArray objectAtIndex:0]);
        
    }
    return 0;
}
