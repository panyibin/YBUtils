//
//  YBViewController.m
//  YBUtils
//
//  Created by panyibin on 01/28/2018.
//  Copyright (c) 2018 panyibin. All rights reserved.
//

#import "YBViewController.h"
#import "TestViewController.h"

@interface YBViewController ()

@end

@implementation YBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(id)sender {
    TestViewController *vc = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
