//
//  main.c
//  Degrees
//将摄氏度转为华氏度
//  Created by Mac on 16/2/1.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>
float transformDegree(float cel){
    float fahr=cel*1.8+32.0;
   // printf("摄氏度：%f 华氏度：%f\n",cel,fahr);
    return fahr;
}

int main(int argc, const char * argv[]) {
    float freeInc=0;//摄氏度
    float freezeInf=transformDegree(freeInc);//转为华氏度
    printf("华氏度:%f",freezeInf);
    return 0;
}
