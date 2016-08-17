//
//  Caculator.h
//  01_方法
//
//  Created by 阳阳 on 16/8/16.
//  Copyright © 2016年 liuguyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Caculator : NSObject
//加法
+(int)add:(int)a with:(int)b;
//减法
+(int)minus:(int)a with:(int)b;
//乘法
+(int)multiply:(int)a with:(int)b;

//除法
+(int)divide:(int)a with:(int)b;
@end
