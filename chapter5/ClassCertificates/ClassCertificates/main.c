//
//  main.c
//  ClassCertificates
//
//  Created by Mac on 16/2/1.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>
#include<unistd.h>

void congratulateStudent(char *student,int numDays,char * course){
    printf("%s 已经尽可能地在%d天内完成了%s的编程任务\n",student,numDays,course);
}

int main(int argc, const char * argv[]) {
    congratulateStudent("鹿止鱼",20,"Java");
    sleep(2);
    congratulateStudent("林月如",5,"C#");
    sleep(2);
    congratulateStudent("赵灵儿",50,"JavaScript");
}






