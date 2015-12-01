//
//  iOSChartsLib.m
//  iOSChartsLib
//
//  Created by matsusaki-local on 2015/11/30.
//  Copyright © 2015年 Kazutaka Matsusaki. All rights reserved.
//

#import "iOSChartsLib.h"
#import "Charts-Swift.h"

@implementation iOSCharts

-(NSString*) helloWorld {
        
    return @"Hello, SampleFramework!";
}

- (BarChartData *)withXVals
{
    NSArray* months = @[@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"];
    NSArray* unitsSold = @[@20.0, @4.0, @6.0, @3.0, @12.0, @16.0, @4.0, @18.0, @2.0, @4.0, @5.0, @4.0];
    BarChartData * chartData = [[BarChartData new] initWithXVals:months];
    return chartData;
}

- (BarChartData *)InitWithXVals:(NSArray<NSObject *> * __nullable)xVals dataSet:(ChartDataSet * __nullable)chartDataSet
{
    BarChartData * chartData = [[BarChartData new] initWithXVals:xVals dataSet:chartDataSet];
    return chartData;
}

@end
