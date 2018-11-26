//
//  AbstractFactory.m
//  DesignPatterns
//
//  Created by gucheng on 2018/11/26.
//  Copyright © 2018年 fenxiang. All rights reserved.
//

#import "AbstractFactory.h"

@interface AbstractFactory ()

/*
 
 0、区分:简单工厂模式的优点是去除了客户端与具体产品的依赖，缺点是违反了"开放-关闭原则"。
        工厂方法模式克服了简单工厂模式的缺点，将产品的创建工作放到具体的工厂类，每个工厂类负责生成一个产品。
        但是在实际应用中，一个工厂类只创建单个产品的情况很少，一般一个工厂类会负责创建一系列相关的产品，如果我们要设计这样的系统，工厂方法模式显然不能满足应用的需求，而抽象工厂模式，可以很好的解决一系列产品创建的问题。
 
 
 1、定义:提供一个创建一系列相关或相互依赖对象的接口，而无需指定他们具体的类。
 
 2、优点:
 .能够很方便的变换产品系列；
 .具体的创建实例过程与客户端分离，客户端是通过它们的h抽象接口操作实例，产品的具体类名也被具体工厂的实现分离，不会出现在客户代码中。
 
 3、缺点:
 在新加产品的需求下，违背开放-封闭原则。通过优缺点的比较，我们可以在如下长江下使用抽象工厂模式:功能模块已经非常成熟，基本上不需要太多修改，但是有可能会替换掉实现这些功能模块的类的那种情况。
 
 4、比较:
 抽象工厂模式&建造者模式
 
 　　抽象工厂模式和建造者模式都属于创建型模式，它们在对象创建方面存在许多相似之处。但是，两者也存在较大的区别，具体如下：
 
       建造者模式                    抽象工厂模式
      构建复杂对象                  构建简单或复杂对象
    以多个步骤构建对象               以单一步骤构建对象
    以多种方式构建对象               以单一方式构建对象
    在构建过程的最后一步返回产品       立刻返回产品
    专注一个特定产品                 强调一套产品
 
 抽象工厂模式&工厂方法模式
 
 　　工厂方法模式只有一个抽象产品类，而抽象工厂模式有多个；
    工厂方法模式中工厂类一般只有一个方法，创建一种产品；抽象工厂模式中工厂类一般有多个方法，创建一系列产品。
    由此理解：工厂方法模式是一种极端情况的抽象工厂模式，而抽象工厂模式可以看成是工厂方法模式的一种推广。
 */

@end

@implementation AbstractFactory

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
