//
//  ViewController.h
//  CollectionViewSample
//
//  Created by Alvin Sun on 2014-11-29.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UICollectionViewController <UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic,strong) NSArray * events;


@end

