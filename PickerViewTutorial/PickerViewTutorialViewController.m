//
//  PickerViewTutorialViewController.m
//  PickerViewTutorial
//
//  Created by kent franks on 8/3/11.
//  Copyright 2011 TheAppCodeBlog. All rights reserved.
//

#import "PickerViewTutorialViewController.h"

@implementation PickerViewTutorialViewController

@synthesize pickerView;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)populateArray1
{
	array1 = [[NSMutableArray alloc] init];
	[array1 addObject:@"Dog"];
	[array1 addObject:@"Cat"];
	[array1 addObject:@"Gerbil"];
	[array1 addObject:@"Bunny"];
	[array1 addObject:@"Fish"];
	[array1 addObject:@"Bird"];
}


- (void)populateArray2
{
	array2 = [[NSMutableArray alloc] init];
	[array2 addObject:@"Red"];
	[array2 addObject:@"Blue"];
	[array2 addObject:@"Yellow"];
	[array2 addObject:@"Green"];
	[array2 addObject:@"Orange"];
	[array2 addObject:@"Purple"];
	[array2 addObject:@"Black"];
	[array2 addObject:@"White"];
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self populateArray1];
    [self populateArray2];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark picker view methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
    return 2;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0) 
    {
        NSLog(@"you selected a %@", [array1 objectAtIndex:row]);
        
    }
    else
    {
        NSLog(@"you selected the color %@", [array2 objectAtIndex:row]);
        
    }
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
{
    // The number of componenets starts with 0, just like an array.
    if (component == 0) 
    {
        return [array1 count];
    }
    else
    {
        return [array2 count];
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
{
    if (component == 0) 
    {
        return [array1 objectAtIndex:row];
    }
    else
    {
        return [array2 objectAtIndex:row];
    }
}

@end
