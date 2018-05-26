//
//  main.c
//  GradeInTheShade
//C数组
//计算三个浮点数的平均值
//  Created by Alan Lu on 16/2/20.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>
#include<stdlib.h>

float averageFloats(float *data,int dataCount){
    float sum=0.0;
    for(int i=0;i<dataCount;i++){
        sum=sum+data[i];
    }
    return sum/dataCount;
}

int main(int argc, const char * argv[]) {
    //创建包含float数的数组
    float *gradeBook=malloc(3*sizeof(float));
    gradeBook[0]=60.2;
    gradeBook[1]=94.5;
    gradeBook[2]=81.1;
    //用此方法无需释放float *gradeBook[3];
    
    //计算平均数
    float average=averageFloats(gradeBook, 3);
    //释放数组
    free(gradeBook);
    gradeBook=NULL;
    printf("Average=%.2f\n",average);
    return 0;
}
