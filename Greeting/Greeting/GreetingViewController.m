//
//  GreetingViewController.m
//  Greeting
//
//  Created by student on 1/20/14.
//  Copyright (c) 2014 student. All rights reserved.
//

#import "GreetingViewController.h"

@interface GreetingViewController ()

@end

@implementation GreetingViewController

@synthesize Messagelbl, Submitbtn, Clearbtn, firstnameField, lastnameField, ageSlider;




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self initialize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ageSliderValueChange:(id)sender {
    float age = [ageSlider value];
    NSLog(@"Selected Age:%i", (int) age);
    
    [Messagelbl setText: [NSString stringWithFormat:@"%i", (int) age]];
}

- (IBAction)SafetySwitchValueChanged:(id)sender {
    UISwitch *tempswitch = (UISwitch *) sender;
    
if ([tempswitch isOn])
{
    [firstnameField setEnabled:YES];
    [lastnameField setEnabled:YES];
    [Submitbtn setEnabled:YES];
    [ageSlider setEnabled:YES];
}
else
{
    [firstnameField setEnabled:NO];
    [lastnameField setEnabled:NO];
    [Submitbtn setEnabled:NO];
    [ageSlider setEnabled:NO];
    
}
}

- (IBAction)submitButtonClick:(id)sender {
    //change Label to hello world
    //[Messagelbl setText:@"Hello World"];
    
    //set first and last variables to textboxes
    NSString *firstname = [firstnameField text];
    NSString *lastname = [lastnameField text];
    
    int age = [ageSlider value];
    //allocate fullname string
    NSString *fullname = [[NSString alloc] initWithFormat:@"%@ %@\n you are %i", firstname, lastname, age];
    
    UIAlertView *submitAlertView = [[UIAlertView alloc] initWithTitle:@"success" message:fullname delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [submitAlertView show];
}

-(void) initialize
{
    
    [Messagelbl setText:@" "];
    [ageSlider setValue: 100];
    
}

- (IBAction)clearButtonCLick:(id)sender {
    [Messagelbl setText:@" "];
    [ageSlider setValue: 100];
    [firstnameField setText:@" "];
    [lastnameField setText:@" "];
}

- (IBAction)firstnameEditEnd:(id)sender {
    NSLog(@"First Name edit did end");
}

- (IBAction)lastnameEditEnd:(id)sender {
    
}

- (IBAction)firstnameExit:(id)sender {
    
}

- (IBAction)lastnameExit:(id)sender {
}


-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [firstnameField resignFirstResponder];
    [lastnameField resignFirstResponder]; 
}

@end
