//
//  TestViewController.m
//  YBUtils_Example
//
//  Created by PanYibin on 2018/1/28.
//  Copyright © 2018年 panyibin. All rights reserved.
//

#import "TestViewController.h"
#import <YBUtils/NSTimer+Yibin.h>

@interface TestViewController ()
{
    NSTimer *myTimer;
}
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    __weak typeof(self) weakSelf = self;
    myTimer = [NSTimer yb_scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer *timer) {
        NSLog(@"timerEvent");
        [weakSelf timerHandler];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)timerHandler {
    NSLog(@"timerHandler");
}

- (void)dealloc {
    NSLog(@"testVC dealloc");
    [myTimer invalidate];
}

@end
