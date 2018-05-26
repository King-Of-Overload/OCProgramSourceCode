//
//  main.c
//  TurkeyTimer
//
//  Created by Mac on 16/2/1.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>

void showCookTimeForTurker(int pounds){
    int necessaryMinutes=15+15*pounds;
    printf("需要烹饪:%d 分钟\n",necessaryMinutes);
}

int main(int argc, const char * argv[]) {
    int totalWeight=10;
    int gibletsWeight=1;
    int turkeyWeight=totalWeight-gibletsWeight;
    showCookTimeForTurker(turkeyWeight);
    return 0;
    
}
