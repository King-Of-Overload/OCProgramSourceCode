//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by Alan Lu on 16/2/20.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance
@property (readonly) NSSet *ownerNames;

-(instancetype) initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n;

-(void) addOwnerName:(NSString *) n;
-(void) removeOwnerName:(NSString *) n;

@end
