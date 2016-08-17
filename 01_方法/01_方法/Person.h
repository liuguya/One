//
//  Person.h
//  01_方法
//
//  Created by 阳阳 on 16/8/16.
//  Copyright © 2016年 liuguyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
   // NSString *name;
    
    NSString *_name;
}
//1没有参数的方法
-(void) work;
//1.2有返回值
//OC里面对象类型都要带一个*
//func writeSomething()->NSString{}
-(NSString *) writeSomething;

//2有参数的方法
//2.1 没有返回值
//func setName(tmpName:NSString)
//-(void)setName:(NSString *)tmpName;

//setter方法
//是以set开头,接着是成员变量的首字母要大写,以逗号结尾

-(void)setName:(NSString *)tmpName;

//2.2有返回值
//func eatApple(array:NSArray)->Int()
-(int)eatApple:(NSArray *)array;


//3.有两个参数
//3.1 没有返回值
-(void)printRelation:(NSString *)name1 with:(NSString *)name2;

//3.2有返回值
-(int)add:(int)a with:(int)b;
@end
