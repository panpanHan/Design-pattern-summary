//
//  SingletonPattern.m
//  DesignPatterns
//
//  Created by gucheng on 2018/11/26.
//  Copyright © 2018年 fenxiang. All rights reserved.
//  循自然之道，抚浮躁之心

#import "SingletonPattern.h"

@interface SingletonPattern ()
/*
 1、定义:23中设计模式之一,它可以保证在程序运行过程，一个类只有一个实例(一个对象)，而且该实例易于供外界访问，从而方便地控制了实例个数，并节约系统资源。
 
 2、常见应用场景:
     a.[NSUserDefaults standardUserDefaults]
     b.[UIApplication sharedApplication]
     c.[UIScreen mainScreen]
     d.[NSFileManager defaultManager]
     e.[NSNotificationCenter defaultCenter]
 
 3、创建单例模式的五个步骤:
     a.声明一个可以新建和获取单个实例对象的方法
     b.声明一个static类型的类变量
     c.声明一个只执行一次的任务
     d.调用dispatch_once执行该任务指定的代码块，在该代码块中实例化上文声明的类变量
     e.返回在整个应用的声明周期中只会被实例化一次的变量
 
 4、示例:
 //Sigleton.h
 @interface Singletion : NSObject
 + (Singletion *)sharedSingletion;  //1.声明一个可以新建和获取单个实例对象的方法
 @end
 
 
 //Singleton.m
 #import "Singleton.h"
 @implementation Singleton
 static Singleton *sharedSingleton = nil; //2.声明一个static类型的类变量
 
 + (Singletion *)sharedSingletion {
     static dispatch_once_t once;   //3.声明一个只执行一次的任务
     dispatch_once(&once,^{
           sharedSingleton = [[self alloc] init];  //调用dispatch_once执行该任务指定的代码块，在该代码块中实例化上文声明的类变量
     });
     return sharedSingleton;   //返回在整个应用的生命周期中只会被实例化一次的变量(不止调用一次，但是实例化一次)
 }
 
 5、实际运用:
 在iOS应用中实例分层的架构设计，即我们需要把数据持久层，业务逻辑层，和展示层分开。
 
 6:备注
   使用@synchronized和dispatch_once实现单例
   a. +(id)sharedInstance {
          static Singleton *sharedInstance = nil;
          @synchronized(self) {
               if(!sharedInstance) {
                  sharedInstance = [[self alloc] init];
               }
          }
          return sharedInstance;
     }
   b. +(id)sharedInstance {
          static Singleton *sharedInstance = nil;
          static dispatch_once_t onceToken;
          dispatch_once(&onceToken,^{
              sharedInstance = [[self alloc] init];
          });
          return sharedInstance;
     }
   以上两种性能对比
   .可以发现dispatch_once方法的性能要明显优于synchronized方法(多线程不采用dispatch_apply方式差距更明显)，所以在实际的应用中我们可以多采用cdispatch_once方式来实现单例。通常使用的时候了解这些就够了。
   .使用dispatch_once可以简化代码并且彻底保证线程安全，开发者无需担心加锁或同步。此处，dispatch_once跟高效，它没有使用重量级的同步机制，若是那样做的话，每次运行代码前都要获取锁。相反，此函数采取"原子访问"来查询标记，以判断其所对应的代码原来是否已经执行过。在64为Mac OS X上测试，后者的执行速度要比前者快一倍。
 
 
 */

@end

@implementation SingletonPattern

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
