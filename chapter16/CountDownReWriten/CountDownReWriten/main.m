//
//  main.m
//  CountDownReWriten
//重写第八章的例子，使用NSString输出
//  Created by Alan Lu on 16/2/3.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <Foundation/Foundation.h>
#import<ReadLine/ReadLine.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char *myChr=readline(NULL);
        int inputValue=atoi(myChr);//获取输入值
        while (inputValue>=0) {
            NSLog(@"%d\n",inputValue);
            if(inputValue%5==0){
                NSString *myString=@"Found one!";
                NSLog(@"%@\n",myString);
            }
            inputValue-=3;
        }
    }
    return 0;
}
