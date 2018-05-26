//
//  BNRObserver.m
//  NSRunLoop
//KVO
//  Created by Alan Lu on 16/2/20.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNRObserver.h"

@implementation BNRObserver
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    NSString *oldValue=[change objectForKey:NSKeyValueChangeOldKey];
    NSString *newValue=[change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"Observer:%@ of %@ was changed from %@ to %@",keyPath,object,oldValue,newValue);
}
@end
