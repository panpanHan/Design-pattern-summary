//
//  PrototypePattern.m
//  DesignPatterns
//
//  Created by gucheng on 2018/11/26.
//  Copyright © 2018年 fenxiang. All rights reserved.
//  循自然之道，抚浮躁之心

#import "PrototypePattern.h"

@interface PrototypePattern ()
/*
 1、定义:使用原型实例指定创建对象的种类，并通过复制这些原型创建新的对象。
    概括:从一个对象那个在创建另一个可定制的对象，而且不需知道任何创建的细节。
 
 2、相关知识点:
 .浅拷贝:只复制了指针值，并没有复制指针指向的资源(即没有创建指针指向资源的副本)，复制后原有指针和新指针共享同一块内存。
 .深复制:不仅复制了指针值，还复制了指针指向的资源。
 
 一般使用retain或者strong修饰属性时，是使s引用对象的指针指向同一个对象，即为同一块内存地址。只要其中有一个指针变量被修改时所有其他引用该对象的变量都会被改变。
 copy关键字修饰时，如果新的对象是不可变的，那么它是直接引用新对象的内存地址，并不重新分配内存地址，如果新对象是可变的，那么在赋值时是释放旧对象，拷贝新对象内容。重新分配了内存地址。以后该指针变量被修改时就不会影响就对象的内容了。（如果新的对象是不可变时，则是浅拷贝，如果新对象是可变的，则是深拷贝）
 copy只有实现了NSCopying协议[(id)copyWithZone:(NSZone*)zone]的对象类型才有效。常用于NSString和Block。
 
 3、何时使用原型模式:
 .需要创建的对象应独立于其类型与创建方式。
 .要实例化的类是在运行时决定的。
 .不想要与产品层次相对应的工厂层次。
 .不同类的实例间的差异仅是状态的若干组合。因此复制相应数量的原型比手工实例化更加方便。
 .类不容易创建，比如每个组件可以把其他组件作为子节点的组合对象。复制已有的组合对象并对副本进行修改会更加容易。
 以下两种特别常见的情形，会想到用原型模式:
 .有很多的相关的类，其行为略有不同，而且主要差异在于内部属性，如名称等；
 .需要使用组合(树)对象作为其他对象的基础，比如，使用组合对象那个作为组件来构建另一个组合对象。
 
 */

@end

@implementation PrototypePattern

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
