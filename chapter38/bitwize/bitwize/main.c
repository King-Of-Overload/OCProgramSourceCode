//
//  main.c
//  bitwize
//位运算
//  Created by Alan Lu on 16/2/20.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    unsigned char a=0x3c;
    unsigned char b=0xa9;
    unsigned char c=a|b;
    printf("Hex: %x|%x=%x\n",a,b,c);
    printf("Decimal:%d|%d=%d\n",a,b,c);
    
    //按位与
    unsigned char d=a&b;
    printf("Hex:%x &%x=%x\n",a,b,d);
    printf("Decimal:%d &%d=%d\n",a,b,d);
    
    //按位异或
    unsigned char e=a^b;
    printf("Hex:%x &%x=%x\n",a,b,e);
    printf("Decimal:%d &%d=%d\n",a,b,e);
    
    //按位取反（求补数）
    unsigned char f=~b;
    printf("Hex:%x &%x=%x\n",a,b,f);
    printf("Decimal:%d &%d=%d\n",a,b,f);
    
    //左移位
    unsigned char g=a<<2;//左移两位
    //右移位
    unsigned char h=a>>1;
    
    
    return 0;
}
