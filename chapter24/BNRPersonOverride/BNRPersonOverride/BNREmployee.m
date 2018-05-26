//
//  BNREmployee.m
//  BNRPersonOverride
//
//  Created by Alan Lu on 16/2/4.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"
//类扩展
@interface BNREmployee()
{
    NSMutableSet *_assets;
}
@property (nonatomic) unsigned int officeAlarmCode;//紧急码
@end
@implementation BNREmployee

-(double)yearsOfEmpolyment{
    //先判断是否拥有一个非空的hireDate
    if(self.hireDate){
        //NSTimeInterval是double类型
        NSDate *now=[NSDate date];
        NSTimeInterval secs=[now timeIntervalSinceDate:self.hireDate];
        return secs/31557600.0;//每年的秒数
    }else{
        return 0;
    }
}


//属性的存取方法
-(void)setAssets:(NSArray *)a{
    self.assets=[a mutableCopy];//将传入的NSArray所指向的对象做一份拷贝
}

-(NSArray *)assets{
    return [self.assets copy];
}

-(void) addAsset:(BNRAsset *)a{
    //判断assets是否为空
    if(!_assets){//如果为空
        //创建数组
        _assets=[[NSMutableSet alloc] init];
    }
    [_assets addObject:a];//添加元素
    a.holder=self;//设置父对象的指针
}


-(unsigned int)valueOfAssets{
    //累加物品的销售价值
    unsigned int sum=0;
    for(BNRAsset *a in _assets){
        sum+=[a resaleValue];
    }
    return sum;
}









//假设所有员工的BMI都是19，这时需要覆盖父类的方法
-(float)bodyMassIndex{
    float normalBMI=[super bodyMassIndex];
    return normalBMI*0.9;
}


//为了知道BNREmployee的实例释放情况，重写方法
-(NSString *) description{
    return [NSString stringWithFormat:@"<Employee %u:$%u in assets>",self.employeeID,self.valueOfAssets];
}

-(void) dealloc{
    NSLog(@"deallocating %@",self);
}



@end
