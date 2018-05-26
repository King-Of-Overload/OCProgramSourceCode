//
//  Blender.h
//  BlenderForEnum
//
//  Created by Alan Lu on 16/2/16.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
enum BlenderSpeed{
    BlenderSpeedStir=1,
    BlenderSpeedChop=2,
    BlenderSpeedLiquify=3,
    BlenderSpeedPulse=9,
    BlenderSpeedIceCrush=15
};

@interface Blender : NSObject
{
    enum BlenderSpeed speed;//speed必须是BlenderSpeed的5个枚举常量当中的一个
}

//setSpeed:要求传入5个枚举变量当中的一个
-(void)setSpeed:(enum BlenderSpeed) x;

@end
