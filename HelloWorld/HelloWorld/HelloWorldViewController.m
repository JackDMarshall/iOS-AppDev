//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by student on 1/13/14.
//  Copyright (c) 2014 student. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

@synthesize lblHelloWorld, btnClickMe;

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

- (IBAction)btnClickMeClicked:(id)sender {
 [lblHelloWorld setText:@"ViewDidLoad sent me" ];
}
@end