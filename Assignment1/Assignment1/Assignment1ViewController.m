//
//  Assignment1ViewController.m
//  Assignment1
//
//  Created by student on 1/13/14.
//  Copyright (c) 2014 student. All rights reserved.
//

#import "Assignment1ViewController.h"

@interface Assignment1ViewController ()

@end

@implementation Assignment1ViewController
@synthesize lblMessage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [lblMessage setText:@"I once told a obj-c joke, but nobody got the message." ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
