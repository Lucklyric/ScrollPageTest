//
//  ViewController.m
//  ActivityIndicator
//
//  Created by Alvin Sun on 2014-11-27.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import "IndicatorViewController.h"

@interface IndicatorViewController ()

@end

@implementation IndicatorViewController

@synthesize myTimer = _myTimer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startUpload:(id)sender {
    if (![self.myIndi isAnimating]) {
        [self.myIndi startAnimating];
    }else{
        [self.myIndi stopAnimating];
    }
}

- (IBAction)startDown:(id)sender {
    myTimer =[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(download) userInfo:nil repeats:YES];
}

- (IBAction)alert:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Aler text goes here" message:@"alert balabalabla" delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"YES", nil];
    [alert show];
}

- (IBAction)actionSheet:(id)sender {
    UIActionSheet* sheet = [[UIActionSheet alloc]initWithTitle:@"Title" delegate:self cancelButtonTitle:@"Cancle" destructiveButtonTitle:@"NO!!!!" otherButtonTitles:@"Facebook",@"sina", nil];
     NSLog(@"%d",[sheet actionSheetStyle]);
    sheet.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
    NSLog(@"%d",[sheet actionSheetStyle]);
    [sheet showInView:self.view];
}

- (void)download{
    self.myProgress.progress += 0.1;
    if (self.myProgress.progress == 1.0) {
        [myTimer invalidate];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"download completed" message:@"here" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:@"cancle", nil];
        [alert show];
    }
}

#pragma mark --实现alert

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 0) {
        NSLog(@"Cancle");
    }else if(buttonIndex == 1){
        NSLog(@"1");
    }
}

#pragma mark --实现actionSheet

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 3) {
        NSLog(@"Cancle");
    }else if (buttonIndex == 0){
        NSLog(@"No!!!");
    }else if (buttonIndex == 1){
        NSLog(@"Facebook");
    }else if (buttonIndex == 2){
        NSLog(@"sina");
    }
}
@end
