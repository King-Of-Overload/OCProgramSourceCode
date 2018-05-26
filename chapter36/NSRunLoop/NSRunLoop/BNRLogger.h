//
//  BNRLogger.h
//  NSRunLoop
//
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject
<NSURLConnectionDelegate,NSURLConnectionDataDelegate>

{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;

-(NSString *) lastTimeString;
-(void)updateLastTime:(NSTimer *)t;


-(void)connection:(NSURLConnection *)connection
   didReceiveData:(NSData *)data;

-(void)connectionDidFinishLoading:(NSURLConnection *)connection;

-(void)connection:(NSURLConnection *)connection
didFailWithError:(NSError *)error;

@end
