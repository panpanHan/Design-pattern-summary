//
//  FactoryMethod.m
//  DesignPatterns
//
//  Created by gucheng on 2018/9/6.
//  Copyright © 2018年 fenxiang. All rights reserved.
//  循自然之道，抚浮躁之心

#import "FactoryMethod.h"

@interface FactoryMethod ()

/*
 1、概述
       在软件系统中，经常面临着“某个对象”的创建工作，由于需求的变化，这个对象的具体实现经常面临着剧烈的变化，但是它却拥有比较稳定的接口。
 　　   如何隔离出这个易变对象的变化，使得系统中“其它依赖该对象的对象”不随着需求的改变而改变，这就是本章要说的Factory Method模式了。
2、定义
       "定义创建对象的接口，让子类决定实例化哪一个类。工厂方法使得一个类的实例化延迟到其子类。"   ————最初定义出现于《设计模式》(Addison-Wesley,1994)
 
 3、     在工厂方法模式中，核心的工厂类(Creator)不再负责所有产品的创建，而是将具体创建工作交给子类(ConcreteCreator)去做。这个核心类仅仅负责给出具体工厂必须实现的接口，而不接触哪一个产品类被实例化这种细节。与直接创建新的具体产品相比，工厂方法模式让客户程序可以要求由工厂方法创建的对象拥有一组共同的行为。这样往类层次结构中引入新的具体产品时，并不需要修改客户端代码，因为返回的任何具体对象的接口都跟客户端一直在用的从前的接口相同。从结构图也可以看到，工厂方法模式中的工厂类与产品类往往具有平行的等级结构，它们之间一一对应。
 
 4、示例:
      在简单工厂模式中，由工厂类(ChartFactory)根据参数负责创建具体的产品(线形图、饼状图)；而在工厂方法模式中，工厂类(Factory)只定义了一个创建产品的抽象接口，创建具体产品的工作由具体的工厂(线形图工厂、饼状图工厂)来实现。如果需要增加其他类型的图形绘制，那么使用简单工厂模式实现的话，首先需要增加一个其他图形绘制的类，例如柱状图(BarChart)，然后修改工厂类(ChartFactory)，在里面加分支语句来判断；使用工厂方法模式实现的话，不仅需要增加图形绘制类，还需要增加具体工厂类(BarFactory)。看到这里，可能大家会感觉到，工厂方法模式不但没有减少难度，反而增加了一些类和复杂度。这样来看，是不是没有必要使用工厂方法模式？咱们再回顾一下开篇介绍的六大设计原则，有一个原则是“开放-关闭原则”，简单工厂模式不仅对扩展开放，而且对修改也开放，违反了“开放-关闭原则”。
         工厂方法模式是简单工厂模式的进一步抽象，它保持了简单工厂模式的优点(去除了客户端与具体产品的依赖)，
         而且克服了它的缺点(违反开放-关闭原则”)。
      缺点:是每增加一个产品，就需要加一个产品工厂的类，增加了额外的开发工作量。

 //IChart.h：
 @protocol IChart <NSObject>
  - (void)drawing;
 
 //LineChart.m(部分代码)：
 - (void)drawing
 {
    NSLog(@"LineChart drawing.");
 }
 
 //PieChart.m(部分代码)：
 - (void)drawing
 {
 NSLog(@"PieChart drawing.");
 }
 
 //Factory.h：
 @protocol Factory <NSObject>
 - (id<IChart>)createChart;
 
 //LineFactory.m(部分代码)：
 - (id<IChart>)createChart
 {
 return [[[LineChart alloc] init] autorelease];
 }
 
 //PieFactory. .m(部分代码)：
 - (id<IChart>)createChart
 {
 return [[[PieChart alloc] init] autorelease];
 }
 
 //客户端调用代码：
  id<Factory> factory = [[[LineFactory alloc] init] autorelease];
 //id<Factory> factory = [[[PieFactory alloc] init] autorelease];
 id<IChart> chart = [factory createChart];
 [chart drawing];
 
 从调用代码可以看出，工厂方法模式从代码中消除了对应用程序特有类的耦合。代码秩序处理Product抽象接口(这里是id<IChart>)，这样同一代码就可以复用
 
 5、思考
     从上面的客户端代码看到，如果有多处调用绘图的地方，我们需要每处都进行修改，这样的话，实际上也没有达到我们的效果:应对变化，尽可能少的修改代码。那么该怎样处理这种情况呢？
     下面的一种方式可以做到:
 
     //id<Factory> factory = [[[LineFactory alloc] init] autorelease];
     //id<Factory> factory = [[[PieFactory alloc] init] autorelease];
     id<Factory> factory = [[[NSClassFromString(@"PieFactory") alloc] init] autorelease];
     id<IChart> chart = [factory createChart];
     [chart drawing];
     [NSNumber numberWithBool:YES];
 
     这样的话，我们可以将@“PieFactory”放到配置文件中，当我们需要绘制线形图的时候，只需要修改配置文件即可，客户端的所有代码都不需要改变。
 
 6、使用场景
     .编译时无法准确预期要创建的对象的类;
     .类想让其子类决定在运行时创建什么;
     .类有若干辅助类为其子类，而你想将返回哪个子类这一信息局部化;
 
 
 */





































@end

@implementation FactoryMethod

- (void)viewDidLoad {
    [super viewDidLoad];
}



@end
