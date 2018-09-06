//
//  Factory.h
//  FactoryMethod
//
//  Created by ligf on 13-12-16.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IChart.h"

@protocol Factory <NSObject>

- (id<IChart>)createChart;

@end
