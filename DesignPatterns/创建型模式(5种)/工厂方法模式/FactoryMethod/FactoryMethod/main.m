//
//  main.m
//  FactoryMethod
//
//  Created by ligf on 13-12-16.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IChart.h"
#import "Factory.h"
#import "LineFactory.h"
#import "PieFactory.h"

int main(int argc, const char * argv[])
{
    /*
     概述:
     在软件系统中，经常面临着“某个对象”的创建工作，由于需求的变化，这个对象的具体实现经常面临着剧烈的变化，但是它却拥有比较稳定的接口。
     如何隔离出这个易变对象的变化，使得系统中“其他依赖该对象的对象”不随着需求的改变而改变，这就是Factory Method模式。
     */
    /*
     定义:
     "定义创建对象的接口，让子类决定实例化哪一个类。工厂方法使得一个类的实例化延迟到其子类，"————最初定义出现于《设计模式》
     */
    /*
     场景:
     .编译时无法准确预期要创建的对象的类。
     .类想让其子类决定在运行时创建什么。
     .类有若干辅助类为其子类，而你想将返回哪个子类这一信息局部化。
     */

    
    
    
    @autoreleasepool {
        id<Factory> factory = [[[LineFactory alloc] init] autorelease];
//        id<Factory> factory = [[[PieFactory alloc] init] autorelease];
        id<IChart> chart = [factory createChart];
        [chart drawing];
    }
    return 0;
}





















