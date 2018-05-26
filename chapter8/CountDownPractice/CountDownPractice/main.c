//
//  main.c
//  CountDownPractice
//从99开始进行倒数到0，每次步进3，输出所有数字，若数字能被5整除，则输出"Found me!"
//  Created by Mac on 16/2/2.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>
#include<stdlib.h>
#include<readline/readline.h>
int main(int argc, const char * argv[]) {
//    int i=99;
//    while(i>=0){
//        printf("%d\n",i);//输出数字
//        if(i%5==0){//是否能被5整除
//            printf("Found me!\n");
//        }
//        i-=3;
//    }
    //更改程序，让用户输入一个值指定从哪个数开始
      char *num=readline(NULL);
    int i=atoi(num);
        while(i>=0){
            printf("%d\n",i);//输出数字
            if(i%5==0){//是否能被5整除
                printf("Found me!\n");
            }
            i-=3;
        }
    return 0;
}
