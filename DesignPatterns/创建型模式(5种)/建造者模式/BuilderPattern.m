//
//  BuilderPattern.m
//  DesignPatterns
//
//  Created by gucheng on 2018/11/26.
//  Copyright © 2018年 fenxiang. All rights reserved.
//  循自然之道，抚浮躁之心

#import "BuilderPattern.h"

@interface BuilderPattern ()

/*
 1、定义:将一个复杂对象的构建与它的表现分离，使得同样的构建过程可以创建不同的表现。
    概述:建造者模式负责将构建复杂对象的过程和它的部件解耦，也就是过程和部件的解耦。
    动机:在软件系统中，有时候会遇到一个复杂对象的创建，它通常由几个部分的子对象采用一定的算法构成；由于需求的变化，这个复杂对象的各个不见经常面临着剧烈的变化，但是将各个部分组成在一起的算法是相对稳定的。
 
 2、使用场景:
 .需要创建涉及各种部件的复杂对象。创建对象的算法应该独立于不见的装配方式。
 .构建过程需要以不同的方式构建对象。
 */

@end

@implementation BuilderPattern

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
