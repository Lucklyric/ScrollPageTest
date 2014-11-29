//
//  ViewController.m
//  RotateScreenTest
//
//  Created by Alvin Sun on 2014-11-28.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import "RotateScreenTest.h"

@interface RotateScreenTest ()

@end

@implementation RotateScreenTest

@synthesize pickerCitiesData,pickerData,pickerProvincesData;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"provinces-cities" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc]initWithContentsOfFile:plistPath];
    self.pickerData = dict;
    
    self.pickerProvincesData = [self.pickerData allKeys];
    
    NSString *seletedProvince = [self.pickerProvincesData objectAtIndex:0];
    self.pickerCitiesData = [self.pickerData objectForKey:seletedProvince];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    NSDate * theDate = self.myDatePicker.date;
    NSLog(@"the date picker is: %@",[theDate descriptionWithLocale:[NSLocale currentLocale]]);
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYY-dd-MM,HH:mm:ss"];
    self.myLable.text = [dateFormatter stringFromDate:theDate];
}

- (IBAction)pickChange:(id)sender {
    NSInteger row1 = [self.myPickerView selectedRowInComponent:0];
    NSInteger row2 = [self.myPickerView selectedRowInComponent:1];
    NSString *selected1 = [self.pickerProvincesData objectAtIndex:row1];
    NSString *selected2 = [self.pickerCitiesData objectAtIndex:row2];
    
    NSString *title = [[NSString alloc] initWithFormat:@"%@,%@City",selected1,selected2];
    self.myLable.text = title;
}



#pragma mark 实现协议PIckerViewData

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return [self.pickerProvincesData count];
    }else{
        return [self.pickerCitiesData count];
    }
}

#pragma mark 实现PickerViewDelegate
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0) {
        return [self.pickerProvincesData objectAtIndex:row];
    }else{
        return [self.pickerCitiesData objectAtIndex:row];
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (component == 0) {
        NSString *seletetd = [self.pickerProvincesData objectAtIndex:row];
        NSArray *array = [self.pickerData objectForKey:seletetd];
        self.pickerCitiesData = array;
        [pickerView reloadComponent:1];
    }
}
@end
