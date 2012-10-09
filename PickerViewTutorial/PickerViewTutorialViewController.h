//
//  PickerViewTutorialViewController.h
//  PickerViewTutorial
//
//  Created by kent franks on 8/3/11.
//  Copyright 2011 TheAppCodeBlog. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewTutorialViewController : UIViewController 
{
	
	UIPickerView *pickerView;
    
    NSMutableArray *array1;
    NSMutableArray *array2;
    
}

@property (nonatomic, retain) IBOutlet UIPickerView *pickerView;

- (void)populateArray1;
- (void)populateArray2;

@end
