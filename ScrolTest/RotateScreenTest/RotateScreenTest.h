//
//  ViewController.h
//  RotateScreenTest
//
//  Created by Alvin Sun on 2014-11-28.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RotateScreenTest : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIDatePicker *myDatePicker;
@property (weak, nonatomic) IBOutlet UILabel *myLable;
- (IBAction)click:(id)sender;
- (IBAction)pickChange:(id)sender;


@property (weak, nonatomic) IBOutlet UIPickerView *myPickerView;

@property (nonatomic,strong) NSDictionary *pickerData;
@property (nonatomic,strong) NSArray *pickerProvincesData;
@property (nonatomic,strong) NSArray *pickerCitiesData;

@end

