//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by Alan Lu on 16/2/20.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance(){
    NSMutableSet  *_ownerNames;
}
@end

@implementation BNROwnedAppliance
//两个参数的初始化方法
-(instancetype) initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n{
    //调用父类初始化方法
    if(self=[super initWithProductName:pn]){
        //创建NSMutableSet实例，用于保存拥有者的名字
        _ownerNames=[[NSMutableSet alloc] init];
        //传入第一个拥有者姓名是否为nil
        if(n){
            [_ownerNames addObject:n];
        }
    }
    return self;
}

-(void) addOwnerName:(NSString *)n{
    [_ownerNames addObject:n];
}

-(void) removeOwnerName:(NSString *)n{
    [_ownerNames removeObject:n];
}

-(NSSet *)ownerNames{
    return [_ownerNames copy];
}

-(instancetype) initWithProductName:(NSString *)pn{
    return [self initWithProductName:pn firstOwnerName:nil];
}

@end
