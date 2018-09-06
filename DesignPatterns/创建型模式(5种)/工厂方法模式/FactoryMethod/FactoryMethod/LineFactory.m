//
//  LineFactory.m
//  FactoryMethod
//
//  Created by ligf on 13-12-16.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "LineFactory.h"
#import "LineChart.h"

@implementation LineFactory

- (id<IChart>)createChart
{
    return [[[LineChart alloc] init] autorelease];
}

@end
