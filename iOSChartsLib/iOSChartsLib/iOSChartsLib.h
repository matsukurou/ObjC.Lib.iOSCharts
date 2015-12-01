//
//  iOSChartsLib.h
//  iOSChartsLib
//
//  Created by matsusaki-local on 2015/11/30.
//  Copyright © 2015年 Kazutaka Matsusaki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Charts-Swift.h"

//! Project version number for iOSChartsLib.
FOUNDATION_EXPORT double iOSChartsLibVersionNumber;

//! Project version string for iOSChartsLib.
FOUNDATION_EXPORT const unsigned char iOSChartsLibVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <iOSChartsLib/PublicHeader.h>

@interface iOSCharts : NSObject

-(NSString*) helloWorld;

-(BarChartData*) InitWithXVals:(NSArray<NSObject *> * __nullable)xVals dataSet:(ChartDataSet * __nullable)dataSet;

-(BarChartData*) withXVals;

@end
