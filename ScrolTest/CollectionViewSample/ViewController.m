//
//  ViewController.m
//  CollectionViewSample
//
//  Created by Alvin Sun on 2014-11-29.
//  Copyright (c) 2014 Alvin Sun. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // LoadEvents
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"events" ofType:@"plist"];
    NSArray *array = [[NSArray alloc] initWithContentsOfFile:plistPath];
    self.events = array;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return [self.events count]/2;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 2;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    Cell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    NSDictionary *event = [self.events objectAtIndex:(indexPath.section*2 + indexPath.row)];
    cell.myLabel.text = [event objectForKey:@"name"];
    cell.myImage.image = [UIImage imageNamed:[event objectForKey:@"image"]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *event = [self.events objectAtIndex:(indexPath.section * 2 + indexPath.row)];
    NSLog(@"select event name : %@",[event objectForKey:@"name"]);
}
@end
