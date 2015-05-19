//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Adam Duflo on 10/9/14.
//  Copyright (c) 2014 Adam Duflo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate

- (void)lionsButtonTapped;
- (void)tigersButtonTapped;

@end

@interface HUDViewController : UIViewController
@property id<HUDDelegate> delegate;

@end
