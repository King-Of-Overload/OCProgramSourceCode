//
//  main.m
//  VowelCounter
//范畴
//  Created by Alan Lu on 16/2/20.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+BNRVowelCounting.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string=@"Hello,World!";
        NSLog(@"%@ has %d vowels",string,[string bnr_vowelCount]);
    }
    return 0;
}
