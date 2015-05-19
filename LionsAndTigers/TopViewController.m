//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Adam Duflo on 10/9/14.
//  Copyright (c) 2014 Adam Duflo. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property NSMutableArray *photosArray;
@property NSMutableArray *lionsArray;
@property NSMutableArray *tigersArray;
@property (weak, nonatomic) IBOutlet UICollectionView *imageCollection;

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.lionsArray = [[NSMutableArray alloc] init];
    [self.lionsArray addObject:[UIImage imageNamed:@"lion_1"]];
    [self.lionsArray addObject:[UIImage imageNamed:@"lion_2"]];
    [self.lionsArray addObject:[UIImage imageNamed:@"lion_3"]];

    self.tigersArray = [[NSMutableArray alloc] init];
    [self.tigersArray addObject:[UIImage imageNamed:@"tiger_1"]];
    [self.tigersArray addObject:[UIImage imageNamed:@"tiger_2"]];
    [self.tigersArray addObject:[UIImage imageNamed:@"tiger_3"]];

    self.photosArray = [[NSMutableArray alloc] init];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photosArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image = [self.photosArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)addLionsToArray {
    self.photosArray = self.lionsArray;
    [self.imageCollection reloadData];
}

- (void)addTigersToArray {
    self.photosArray = self.tigersArray;
    [self.imageCollection reloadData];
}

#pragma mark - IBActions

- (IBAction)onBarButtonPressed:(id)sender {
    [self.delegate topRevealButtonTapped];
}

@end
