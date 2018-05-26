//
//  main.m
//  Stringz
//通过NSString和NSData将数据写入文件
//  Created by Alan Lu on 16/2/16.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *str1=[[NSMutableString alloc] init];
        for(int i=0;i<10;i++){
            [str1 appendString:@"娜塔莉亚萌萌哒\n"];
        }
        [str1 writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:NULL];//不带错误处理
        NSLog(@"str1写入文件完成");
        
        //带错误处理的文件写入
        NSMutableString *str2=[[NSMutableString alloc] init];
        for(int i=0;i<10;i++){
            [str2 appendString:@"鹿止鱼萌萌哒\n"];
        }
        //声明一个指向NSError对象的指针，但是不创建相应的对象
        //实际上，只有当发生错误时，才会由writeToFile方法创建相应的NSError对象
        NSError *error;
        //将NSError指针通过引用传入writeToFile:atomically:encoding:error方法
        BOOL success=[str2 writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        //检查返回的布尔值，如果写入文件失败，就查询NSError对象并输出错误描述
        if(success){
            NSLog(@"文件写入完毕");
        }else{
            NSLog(@"写入文件失败：%@",[error localizedDescription]);
        }
    }
    return 0;
}
