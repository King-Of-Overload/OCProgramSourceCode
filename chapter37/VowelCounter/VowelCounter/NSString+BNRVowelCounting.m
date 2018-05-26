//
//  NSString+BNRVowelCounting.m
//  VowelCounter
//
//  Created by Alan Lu on 16/2/20.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "NSString+BNRVowelCounting.h"

@implementation NSString (BNRVowelCounting)

-(int)bnr_vowelCount{
    NSCharacterSet *charSet=[NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEYOUY"];
    
    NSUInteger count=[self length];
    int sum=0;
    for(int i=0;i<count;i++){
        unichar c =[self characterAtIndex:i];
        if([charSet characterIsMember:c]){
            sum++;
        }
    }
    return sum;
}
@end
