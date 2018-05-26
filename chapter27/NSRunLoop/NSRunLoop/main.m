//
//  main.m
//  NSRunLoop
//回调运行循环
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRLogger *logger=[[BNRLogger alloc] init];
        [[NSNotificationCenter defaultCenter] addObserver:logger selector:@selector(zoneChange:) name:NSSystemTimeZoneDidChangeNotification object:nil];
        NSURL *url=[NSURL URLWithString:@"http://dzs.qisuu.com/txt/%E8%A1%8C%E5%B0%B8%E8%B5%B0%E8%82%89.txt"];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn=[[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];//委托
        __unused NSTimer *timer=[NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(updateLastTime:) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
