//
//  ViewController.m
//  ScrolTest
//
//  Created by Alvin Sun on 2014-11-26.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import "ScrolController.h"

@interface ScrolController ()

@end

@implementation ScrolController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myScrolView.contentSize = CGSizeMake(320, 800);
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHied:) name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardWillShowNotification object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [self.myScrolView setContentOffset:CGPointMake(0, 100) animated:YES];
    [super viewDidAppear:YES];
}

- (void)keyboardDidShow:(NSNotification *)sender{
    NSLog(@"RUN here");
    if (isKeyBoardShowed) {
        return;
    }
    CGRect frame = [sender.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    CGSize keyBoardSize = frame.size;
    
    CGRect viewFrame = self.myScrolView.frame;
    viewFrame.size.height -= keyBoardSize.height;
    self.myScrolView.frame = viewFrame;
    
    [self.myScrolView scrollRectToVisible:[self.myText frame] animated:YES];
    isKeyBoardShowed = YES;
    
}

- (void)keyboardWillHied:(NSNotification *)sender{
    
}

@end
