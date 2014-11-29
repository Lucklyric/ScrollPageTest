//
//  ViewController.m
//  ToolBarTest
//
//  Created by Alvin Sun on 2014-11-28.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import "ToolBarController.h"

@interface ToolBarController ()

@end

@implementation ToolBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    self.lable.text = @"Save";
}

- (IBAction)open:(id)sender {
    self.lable.text = @"Open";
}
- (IBAction)Save:(id)sender {
    self.lable.text = @"BarSave";
}
@end
