//
//  ViewController.m
//  BI-IOS-VIEWS
//
//  Created by Dominik Vesely on 30/09/14.
//  Copyright (c) 2014 Ackee s.r.o. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    CGRect firstFrame = CGRectMake(20, 20, 200, 200);
    UIView* firstView = [[UIView alloc] initWithFrame:firstFrame];
    firstView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:firstView];

    UIView* secondView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    secondView.backgroundColor = [UIColor redColor];
    secondView.layer.cornerRadius = 8;
    [firstView addSubview:secondView];

    
    
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"ahoj bi-ios");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
