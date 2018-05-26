//
//  main.m
//  NSRunLoop
//回调运行循环
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"
#import "BNRObserver.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRLogger *logger=[[BNRLogger alloc] init];
        [[NSNotificationCenter defaultCenter] addObserverForName:nil object:nil queue:nil usingBlock:^(NSNotification *n){
            NSLog(@"系统时区被更改");
        }];
        NSURL *url=[NSURL URLWithString:@"http://dzs.qisuu.com/txt/%E8%A1%8C%E5%B0%B8%E8%B5%B0%E8%82%89.txt"];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn=[[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];//委托
        __unused NSTimer *timer=[NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        
        //KVO
        __unused BNRObserver *observer=[[BNRObserver alloc] init];
        //无论lasttime何时发生变化，都要通知我它改变的新值以及改变之前的旧值
        [logger addObserver:observer forKeyPath:@"lastTime" options:NSKeyValueObservingOptionNew context:nil];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
