//
//  main.c
//  SquarePractice
//写一个计算整数的平方并显示结果的程序
//  Created by Mac on 16/2/2.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>

 int caculateSquare(int number){
    int result;
    result=number*number;
    return result;
}

int main(int argc, const char * argv[]) {
    int number=5;
    int result=caculateSquare(number);
    printf("\"%d\" 的平方是\"%d\"",number,result);
}
