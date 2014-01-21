//
//  GreetingViewController.h
//  Greeting
//
//  Created by student on 1/20/14.
//  Copyright (c) 2014 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GreetingViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *Messagelbl;

@property (weak, nonatomic) IBOutlet UIButton *Submitbtn;

@property (weak, nonatomic) IBOutlet UIView *Clearbtn;

@property (weak, nonatomic) IBOutlet UITextField *firstnameField;

@property (weak, nonatomic) IBOutlet UITextField *lastnameField;

@property (weak, nonatomic) IBOutlet UISlider *ageSlider;




- (IBAction)submitButtonClick:(id)sender;

- (IBAction)clearButtonCLick:(id)sender;

- (IBAction)firstnameEditEnd:(id)sender;

- (IBAction)lastnameEditEnd:(id)sender;

- (IBAction)firstnameExit:(id)sender;

- (IBAction)lastnameExit:(id)sender;

- (IBAction)ageSliderValueChange:(id)sender;

- (IBAction)SafetySwitchValueChanged:(id)sender;


@end
