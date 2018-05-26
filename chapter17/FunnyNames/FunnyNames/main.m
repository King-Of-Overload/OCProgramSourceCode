//
//  main.m
//  FunnyNames
//有趣的名字
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //找出名字的字符串
        NSString *nameString=[NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        NSArray *names=[nameString componentsSeparatedByString:@"\n"];//将所得字符串按"\n"进行分割，并保存在数组中
        //找出专有名词的字符串
//        NSString *proString=[NSString stringWithContentsOfFile:@"usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
//        NSArray *pros=[proString componentsSeparatedByString:@"\n"];
        NSString *wolf=@"Wolf,Alan";
        NSArray *pros=@[wolf];
        for(int i=0;i<[names count];i++){
            NSString *s=names[i];
            for(NSString *p in pros){
                NSRange range=[p rangeOfString:s options:NSCaseInsensitiveSearch];
                //是否找到
                if(range.location!=NSNotFound){
                    NSLog(@"%@",p);
                }
            }
        }
    }
    return 0;
}
