//
//  Person.m
//  01_方法
//
//  Created by 阳阳 on 16/8/16.
//  Copyright © 2016年 liuguyang. All rights reserved.
//

#import "Person.h"

@implementation Person


-(void)work{
    NSLog(@"窝在工作");
}

-(NSString *)writeSomething{
    return @"大江东去";
}

//形参在声明和实现的时候可以写的不一样
-(void)setName:(NSString *)tmpName{
    _name = tmpName;
}
//这个方法是用来打印对象的
//默认是类名和内存地址
//一般用来调试程序
-(NSString *)description{
    return _name;
}
-(int)eatApple:(NSArray *)array{
    return  (int)array.count;
}

-(void)printRelation:(NSString *)name1 with:(NSString *)name2{
    NSLog(@"%@和%@是好朋友",name1,name2);
}
-(int)add:(int)a with:(int)b {
    return a+b;
}
@end
