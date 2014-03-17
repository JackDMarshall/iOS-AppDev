//
//  ViewController.m
//  Assignment2
//
//  Created by Jack Marshall on 1/20/14.
//  Copyright (c) 2014 JackDMarshall. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize firstnameTextField, lastnameTextField, ageSlider, ageLabel, readysubmitSwitch, submitButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [submitButton setEnabled:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitButtonClick:(id)sender {
    //set first and last variables to textboxes
    NSString *firstname = [firstnameTextField text];
    NSString *lastname = [lastnameTextField text];
    
    int age = [ageSlider value];
    //allocate fullname string
    NSString *fullname = [[NSString alloc] initWithFormat:@"%@ %@\n", firstname, lastname];
    
    UIAlertView *submitAlertView = [[UIAlertView alloc] initWithTitle:@"Thank You," message:fullname delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [submitAlertView show];
}

- (IBAction)readysubmitValueChange:(id)sender {
    UISwitch *tempswitch = (UISwitch*) sender;
    if ([tempswitch isOn]) {
        [submitButton setEnabled:YES];
    }
    else
    {
        [submitButton setEnabled:NO];
    }
}

- (IBAction)ageValueChange:(id)sender {
    float age = [ageSlider value];
    NSLog(@"Selected Age:%i", (int) age);
    
    [ageLabel setText:[NSString stringWithFormat:@"%i", (int) age]];
}

- (IBAction)firstnameExit:(id)sender {
}

- (IBAction)lastnameExit:(id)sender {
}



@end
