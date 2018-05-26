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
    if(self.holder){//判断BNREmployee是否为空
        return [NSString stringWithFormat:@"<%@:$%d>",self.label,self.resaleValue];
    }else{
        return [NSString stringWithFormat:@"<%@:$%d unassigned>",self.label,self.resaleValue];
    }
}

-(void)dealloc{
    NSLog(@"deallocating %@",self);
}
@end
