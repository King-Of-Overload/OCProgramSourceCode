//
//  main.m
//  TimeAfterTime
//
//  Created by Mac on 16/2/2.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now=[NSDate date];
        NSLog(@"这个NSDate对象地址在：%p\n",now);
        NSLog(@"里面存的数据是:%@",now);
        
        double seconds=[now timeIntervalSince1970];
        NSLog(@"从1970年到现在已经时隔%f秒了",seconds);
        
        //发送伪造消息，来查看错误提示
//        double testSeconds=[NSDate timeIntervalSince1970];
//        NSDate *testNow =[now date];
        
    }
    return 0;
}
