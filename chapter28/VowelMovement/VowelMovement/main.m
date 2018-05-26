//
//  main.m
//  VowelMovement
//Block对象
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建两个数组对象，分别用于保存最初的字符串对象和去除元音字母后的版本
        NSArray *originalStrings=@[@"Sauerkraut",@"Raygun",@"Big Nerd Ranch",@"Mississippi"];
        NSLog(@"原来的字符串：%@",originalStrings);
        NSMutableArray *devowelizedStrings=[NSMutableArray array];
        //创建数组对象，保存需要从字符串中移除的字符
        NSArray *vowels=[NSArray arrayWithObjects:@"a",@"e",@"i",@"o",@"u",nil];
        //声明Block变量
        void (^devowelizer)(id,NSUInteger,BOOL *);
        //将Block对象赋给变量
        devowelizer=^(id string,NSUInteger i,BOOL *stop){
            NSRange yRange=[string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            //是否包含y
            if(yRange.location!=NSNotFound){
                *stop=YES;//终止枚举过程
                return;//结束执行当前block对象
            }
            NSMutableString *newString=[NSMutableString stringWithString:string];
            //枚举数组中的字符串，将所有出现的元音字母替换成空字符串
            for(NSString *s in vowels){
                NSRange fullRange=NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            [devowelizedStrings addObject:newString];
        };
        
        //传递Block对象
        //枚举数组对象，针对每个数组中的对象，执行Block对象devowelizer
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"newString:%@",devowelizedStrings);
    }
    return 0;
}
