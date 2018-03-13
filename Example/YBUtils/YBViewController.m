//
//  YBViewController.m
//  YBUtils
//
//  Created by panyibin on 01/28/2018.
//  Copyright (c) 2018 panyibin. All rights reserved.
//

#import "YBViewController.h"
#import "TestViewController.h"
#import <YBUtils/NSDictionary+Yibin.h>

@interface YBViewController ()

@end

@implementation YBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    
    [dict setObject:@"12" forKey:@"num"];
    [dict setObject:@"abc" forKey:@"num1"];
    [dict setObject:@[@"a", @"b", @"c"] forKey:@"num2"];
    [dict setObject:@{@"name":@"hello"} forKey:@"num3"];
    [dict setObject:@(YES) forKey:@"num4"];
    
    NSInteger a = [dict getIntegerForKey:@"num"];
    NSString *b = [dict getStringForKey:@"num1"];
    NSArray *array = [dict getArrayForKey:@"num2"];
    NSDictionary *d = [dict getDictionaryForKey:@"num3"];
    BOOL bo = [dict getBoolForKey:@"num4"];
    
    NSLog(@"a:%ld", a);
    NSLog(@"b:%@", b);
    NSLog(@"array:%@", array);
    NSLog(@"d:%@", d);
    NSLog(@"bo:%d", bo);
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
