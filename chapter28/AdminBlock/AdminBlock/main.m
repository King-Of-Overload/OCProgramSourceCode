//
//  main.m
//  AdminBlock
//使用匿名Block对象
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *oldStrings=[NSArray arrayWithObjects:@"Nancy",@"Bob",@"Nataliya",nil];
        NSLog(@"oldStrings:%@",oldStrings);
        NSMutableArray *newStrings=[NSMutableArray array];
        NSArray *vowels=[NSArray arrayWithObjects:@"a",@"e",@"i",@"o",@"u", nil];
        
        
        //枚举数组对象
        [oldStrings enumerateObjectsUsingBlock:^(id string,NSUInteger i,BOOL *stop){
            NSMutableString *newString=[NSMutableString stringWithString:string];
            for(NSString *s in vowels){
                NSRange fullRange=NSMakeRange(0,[newString length]);
                [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
            }
            [newStrings addObject:newString];
        }];
        
        NSLog(@"新的字符串是：%@",newStrings);
    }
    return 0;
}
