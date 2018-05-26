//
//  main.m
//  NSStringExample
//NSString常用方法
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *slogan=@"I \u2661 shown!";//使用unicode字符
        NSLog(@"%@",slogan);
        
        //动态字符串
        NSDate *now=[[NSDate alloc] init];
        NSString *dateString=[NSString stringWithFormat:@"The date is%@",now];
        NSLog(@"日期：%@",dateString);
        
        NSString *firstStr=@"鹿止鱼萌萌哒";
        NSString *secondStr=@"鹿止鱼萌萌哒";
        if([firstStr isEqualToString:secondStr]){
            NSLog(@"两个字符串%@与%@相等",firstStr,secondStr);
        }
        
        //大小写转换
        NSString *angryText=@"That makes me so mad!";
        NSString *upperStr=[angryText uppercaseString];//转为大写
        NSString *cuteStr=@"YOU ARE SO CUTE";
        NSString *lowerStr=[cuteStr lowercaseString];//转为小写
        NSLog(@"大写字符串:%@\n",upperStr);
        NSLog(@"小写字符串:%@\n",lowerStr);
        
        
        //查找指定字符串(区分大小写)
        NSString *listOfNames=@"杨baby,鹿止鱼,林黛玉,关羽,张飞";
        NSString *name=@"鹿止鱼";
        NSRange myRange=[listOfNames rangeOfString:name];//rangeOfString区分大小写
        if(myRange.location==NSNotFound){//没有找到
            NSLog(@"没有找到%@",name);
        }else{
            NSLog(@"恭喜找到了%@同学",name);
        }
        
        //练习:查找指定字符串（不区分大小写）
        NSString *names=@"mike,Nancy,lisa,JOHn,leon";
        NSString *myname=@"nancy";
        NSRange range=[names rangeOfString:myname options:NSCaseInsensitiveSearch];//不区分大小写
        if(range.location==NSNotFound){//没有找到
            NSLog(@"没有找到%@",myname);
        }else{
            NSLog(@"恭喜找到了%@同学",myname);
        }

    }
    return 0;
}
