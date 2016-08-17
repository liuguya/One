//
//  Caculator.m
//  01_方法
//
//  Created by 阳阳 on 16/8/16.
//  Copyright © 2016年 liuguyang. All rights reserved.
//

#import "Caculator.h"

@implementation Caculator
+(int)add:(int)a with:(int)b{
    return a+b;
}
+(int)minus:(int)a with:(int)b{
    return a-b;
}
+(int)multiply:(int)a with:(int)b{
    return a*b;
}

+(int)divide:(int)a with:(int)b{
    if (b == 0){
        NSLog(@"除数不能为0");
        return 0;
    }else{
        return a/b;
    }
    
}
@end
