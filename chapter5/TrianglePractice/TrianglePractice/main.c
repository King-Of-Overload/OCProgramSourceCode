//
//  main.c
//  TrianglePractice
//已知三角形两个角的度数，求第三个角的度数
//  Created by Mac on 16/2/1.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleA,float angleB){
    float angleC;
    angleC=180.0-angleA-angleB;
    return angleC;
}


int main(int argc, const char * argv[]) {
    float angleA=30.0;
    float angleB=60.0;
    float angleC=remainingAngle(angleA,angleB);
    printf("第三个角的度数是: %f\n",angleC);
    return 0;
}
