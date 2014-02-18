//
//  ViewController.m
//  SlotMachine
//
//  Created by student on 2/17/14.
//  Copyright (c) 2014 FVTC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize pickerView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //_pickerItems = [[NSMutableArray alloc] init];
    
    _pickerItems = [[NSMutableArray alloc] initWithObjects: @"cherry.jpg", @"orange.jpg", @"grape.jpg", @"bell.jpg", @"bar.jpg", @"seven.jpg", nil];
    _slotContents = [[NSMutableArray alloc] init];
    for (int i=0; i < SLOT_COUNT; i++)
    {
        NSMutableArray *_tempItems = [[NSMutableArray alloc] init];
        for (int j = 0; j < MAX_ITEMS; j++)
        {
            int r = rand() %6;
            [_tempItems addObject:[_pickerItems objectAtIndex:r]];
        }
        [_slotContents addObject:_tempItems];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return SLOT_COUNT;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return MAX_ITEMS;
}


- (UIView *) pickerView:(UIPickerView *)pickerView viewForRow: (NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    
    NSMutableArray *tempArray = [_slotContents objectAtIndex:component];
    UIImage *tempImage = [UIImage imageNamed:[tempArray objectAtIndex:row]];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:tempImage];
    
    [imageView setFrame:CGRectMake(0,0,30,30)];

    return (UIView *) imageView;
}

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"You selected row:%i", row);
    
}

- (IBAction)SpinButtonClick:(id)sender {
    
    int row1 = rand() % MAX_ITEMS;
    int row2 = rand() % MAX_ITEMS;
    int row3 = rand() % MAX_ITEMS;
    
    [pickerView selectRow:row1 inComponent:0 animated:YES];
    [pickerView selectRow:row2 inComponent:1 animated:YES];
    [pickerView selectRow:row3 inComponent:2 animated:YES];
    
    NSString *value1 = [[_slotContents objectAtIndex:0] objectAtIndex:row1];
     NSString *value2 = [[_slotContents objectAtIndex:1] objectAtIndex:row2];
     NSString *value3 = [[_slotContents objectAtIndex:2] objectAtIndex:row3];
    
    if ([value1 isEqualToString:value2] && [value2 isEqualToString:value3])
    {
        NSLog(@"Winner");
    }
    else
    {
        
        NSLog(@"Try again");
    }
}
@end
