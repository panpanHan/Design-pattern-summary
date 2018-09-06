//
//  PieFactory.m
//  FactoryMethod
//
//  Created by ligf on 13-12-16.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "PieFactory.h"
#import "PieChart.h"

@implementation PieFactory

- (id<IChart>)createChart
{
    return [[[PieChart alloc] init] autorelease];
}

@end
