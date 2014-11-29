//
//  ViewController.h
//  ToolBarTest
//
//  Created by Alvin Sun on 2014-11-28.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToolBarController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lable;

- (IBAction)save:(id)sender;
- (IBAction)open:(id)sender;

@end

