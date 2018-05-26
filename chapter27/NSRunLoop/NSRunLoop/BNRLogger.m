//
//  BNRLogger.m
//  NSRunLoop
//
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

-(NSString *)lastTimeString{
    static NSDateFormatter *dateFormatter=nil;
    if(!dateFormatter){
        dateFormatter=[[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"已经创建日期格式化器");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}


-(void)updateLastTime:(NSTimer *)t{
    NSDate *now=[NSDate date];
    [self setLastTime:now];
    NSLog(@"设置日期为：%@",self.lastTimeString);
}


//收到一定字节数的数据后会被调用
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    NSLog(@"接收到%lu字节",[data length]);
    //如果NSMutableData对象还不存在，就创建它
    if(!_incomingData){
        _incomingData=[[NSMutableData alloc] init];
    }
    [_incomingData appendData:data];
}

//最后一部分数据处理完毕后调用
-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"获取到了所有数据");
    NSString *string=[[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    _incomingData=nil;
    NSLog(@"有%lu个字符",[string length]);
    NSLog(@"内容：%@",string);
}

//获取数据失败时调用
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"连接失败：%@",[error localizedDescription]);
    _incomingData=nil;
}

-(void)zoneChange:(NSNotification *)note{
    NSLog(@"系统时区被更改");
}
@end
