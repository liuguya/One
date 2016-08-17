//
//  main.m
//  01_方法
//
//  Created by 阳阳 on 16/8/16.
//  Copyright © 2016年 liuguyang. All rights reserved.
//

#import <Foundation/Foundation.h>
//头文件如果是系统文件,使用<>
//如果是自己写的类,使用""
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //OC的方法分成两大类
        //以-开头的叫减方法,或者叫对象方法
        //以+开头的叫加方法,或者叫类方法
        
        Person *zhangsan = [[Person alloc] init];
        [zhangsan work];
        
        
        NSString *sth = [zhangsan writeSomething];
        NSLog(@"%@",sth);
        //打印对象的时候是去调用了 - (NSString*)description
        //NSSting类型里面是重写了父类的这个方法
       
        
        
        [zhangsan setName:@"张三"];
         NSLog(@"%@",zhangsan);
        //OC里面不可变数组写法跟Swift类似,只是全部要加一个@
        NSArray *array = @[@"苹果",@"青苹果"];
        int num = [zhangsan eatApple:array];
        NSLog(@"%d",num);
        
        [zhangsan printRelation:@"马蓉" with:@"宋哲"];
        
        int result = [zhangsan add:10 with:20];
        NSLog(@"result = %d",result);
    }
    return 0;
}
