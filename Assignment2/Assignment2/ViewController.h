//
//  ViewController.h
//  Assignment2
//
//  Created by Jack Marshall on 1/20/14.
//  Copyright (c) 2014 JackDMarshall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *firstnameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastnameTextField;
@property (weak, nonatomic) IBOutlet UISlider *ageSlider;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UISwitch *readysubmitSwitch;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;


- (IBAction)submitButtonClick:(id)sender;
- (IBAction)readysubmitValueChange:(id)sender;
- (IBAction)ageValueChange:(id)sender;
- (IBAction)firstnameExit:(id)sender;
- (IBAction)lastnameExit:(id)sender;


@end
