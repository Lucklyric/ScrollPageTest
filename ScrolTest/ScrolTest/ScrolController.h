//
//  ViewController.h
//  ScrolTest
//
//  Created by Alvin Sun on 2014-11-26.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrolController : UIViewController <UITextFieldDelegate>{
    BOOL isKeyBoardShowed;
}

@property (weak, nonatomic) IBOutlet UIScrollView *myScrolView;
@property (weak, nonatomic) IBOutlet UITextField *myText;

- (void)keyboardWillHied:(NSNotification *)sender;
- (void)keyboardDidShow:(NSNotification *)sender;
@end

