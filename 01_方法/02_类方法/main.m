//
//  main.m
//  02_类方法
//
//  Created by 阳阳 on 16/8/16.
//  Copyright © 2016年 liuguyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Caculator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int res1 = [Caculator add:10 with:20];
        NSLog(@"res1 = %d",res1);
        
        int res2 = [Caculator minus:30 with:20];
        NSLog(@"res2 = %d",res2);
        
        int res3 = [Caculator multiply:20 with:10];
        NSLog(@"res3 = %d",res3);
        
        int res4 = [Caculator divide:20 with:10];
        NSLog(@"res3 = %d",res4);
    }
    return 0;
}
