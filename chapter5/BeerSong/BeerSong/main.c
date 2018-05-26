//
//  main.c
//  BeerSong
//递归示例
//  Created by Mac on 16/2/1.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>


void singTheSong(int numberOfBottles){
    if(numberOfBottles==0){
        printf("墙上没有酒瓶子\n");
    }else{
        printf("%d 个酒瓶子，%d 瓶酒\n",numberOfBottles,numberOfBottles);
        int oneFewer=numberOfBottles-1;
        printf("拿下来，大家齐分享，还有 %d 瓶酒在墙上\n",oneFewer);
        singTheSong(oneFewer);//自己调用自己
        //在每一次函数结束之前打印出一条信息
        printf("放个瓶子在垃圾箱里，%d 个空瓶子在垃圾箱里\n",numberOfBottles);
    }
}


int main(int argc, const char * argv[]) {
    singTheSong(4);
}
