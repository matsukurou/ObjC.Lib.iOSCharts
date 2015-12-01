//
//  ViewController.m
//  iOSChartsLibPodsDemo
//
//  Created by matsusaki-local on 2015/12/01.
//  Copyright © 2015年 Kazutaka Matsusaki. All rights reserved.
//

#import "ViewController.h"
#import <iOSChartsLib/iOSChartsLib.h>


@interface ViewController ()

@end

@implementation ViewController

@synthesize barChartView = _barChartView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _barChartView.noDataText = @"データないよ";
    
    NSArray* months = @[@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"];
    NSArray* unitsSold = @[@20.0, @4.0, @6.0, @3.0, @12.0, @16.0, @4.0, @18.0, @2.0, @4.0, @5.0, @4.0];
    
    [self setChart:months:unitsSold];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// チャートにデータを設定
- (void)setChart:(NSArray *)dataPoints :(NSArray *)values
{
    NSMutableArray *datas = [NSMutableArray array];
    
    for (int i = 0; i < dataPoints.count; i++)
    {
        BarChartDataEntry* entryData = [[BarChartDataEntry alloc] initWithValue:[[values objectAtIndex:i] doubleValue] xIndex:i];
        [datas addObject:entryData];
    }
    
    BarChartDataSet* chartDataSet = [[BarChartDataSet new] initWithYVals:datas label:@"Units Sold"];
    
    BarChartData* chartData = [[iOSCharts new] InitWithXVals:dataPoints dataSet:chartDataSet];
    
    _barChartView.data = chartData;
}

@end
