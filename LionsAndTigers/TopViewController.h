//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Adam Duflo on 10/9/14.
//  Copyright (c) 2014 Adam Duflo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCollectionViewCell.h"

@protocol TopDelegate

- (void)topRevealButtonTapped;

@end

@interface TopViewController : UIViewController
@property id<TopDelegate> delegate;

- (void)addLionsToArray;
- (void)addTigersToArray;

@end
