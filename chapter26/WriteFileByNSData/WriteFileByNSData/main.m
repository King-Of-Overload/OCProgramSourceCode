//
//  main.m
//  WriteFileByNSData
//使用NSData读取与写入文件
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url=[NSURL URLWithString:@"https://img.alicdn.com/imgextra/i4/14350354/TB2xVkPjpXXXXaYXXXXXXXXXXXX_!!14350354.jpg"];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        NSError *error=nil;
        //这行代码会阻塞程序，直到下载完所有的数据
        NSData *data=[NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        if(!data){
            NSLog(@"获取图片失败：%@",[error localizedDescription]);
            return 1;
        }
        NSLog(@"这张图片有%lu字节",(unsigned long)[data length]);
        BOOL writen=[data writeToFile:@"/tmp/beauty.jpg" options:NSDataWritingAtomic error:&error];
        if(!writen){
            NSLog(@"写入文件失败:%@",[error localizedDescription]);
        }
        NSLog(@"写入成功");
        
        //读取文件
        NSData *readData=[NSData dataWithContentsOfFile:@"/tmp/beauty.jpg"];
        NSLog(@"该文件有%lu字节",(unsigned long)[readData length]);
    }
    return 0;
}
