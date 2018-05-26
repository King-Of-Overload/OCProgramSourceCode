//
//  BNRAsset.m
//  BNRPersonOverride
//
//  Created by Alan Lu on 16/2/4.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

-(NSString *)description{
    return [NSString stringWithFormat:@"<%@:$%u>",self.label,self.resaleValue];
}

-(void)dealloc{
    NSLog(@"deallocating %@",self);
}
@end
