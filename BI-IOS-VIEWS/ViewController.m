//
//  ViewController.m
//  BI-IOS-VIEWS
//
//  Created by Dominik Vesely on 30/09/14.
//  Copyright (c) 2014 Ackee s.r.o. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    CGRect firstFrame = CGRectMake(40, 40, 200, 200);
    UIView* firstView = [[UIView alloc] initWithFrame:firstFrame];
    firstView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:firstView];
    
    UIView* secondView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];

    
    secondView.backgroundColor = [UIColor redColor];
    [firstView addSubview:secondView];
    
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(40, 210, 200, 40)];
    label.textColor = [UIColor greenColor];
    label.text = @"Chci spánek";
    
    [self.view addSubview:label];
    
    NSLog(@"ahoj bi-ios");
    
    [_segmentedControl addTarget:self action:@selector(segmentedAction:) forControlEvents:UIControlEventValueChanged];
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) segmentedAction:(UISegmentedControl*) sender {
    NSLog(@"selected segment is: %d",sender.selectedSegmentIndex);
}

- (IBAction)btnAction:(UIButton *)sender {
    NSLog(@"Button pressed!");
}


@end
