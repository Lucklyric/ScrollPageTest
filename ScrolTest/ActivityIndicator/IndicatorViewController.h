//
//  ViewController.h
//  ActivityIndicator
//
//  Created by Alvin Sun on 2014-11-27.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IndicatorViewController : UIViewController <UIAlertViewDelegate, UIActionSheetDelegate>{
    NSTimer* myTimer;
}
@property (nonatomic,strong) NSTimer* myTimer;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *myIndi;
- (IBAction)startUpload:(id)sender;
@property (weak, nonatomic) IBOutlet UIProgressView *myProgress;
- (IBAction)startDown:(id)sender;
- (IBAction)alert:(id)sender;
- (IBAction)actionSheet:(id)sender;
- (void)download;
@end

