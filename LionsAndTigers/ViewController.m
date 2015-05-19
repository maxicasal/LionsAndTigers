//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Adam Duflo on 10/9/14.
//  Copyright (c) 2014 Adam Duflo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <TopDelegate, HUDDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topContainerLeadingConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topContainerTrailingConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqual:@"TopVCSegue"]) {
        // Sets UINavigationController as the destinationViewController, because it comes before TopViewController
        UINavigationController *navigationController = segue.destinationViewController;
        // Assigning topViewController to the first object within the viewControllers array within navigationController
        // All navigation controllers have an array!!
        self.topViewController = [navigationController.viewControllers firstObject];
        // Sets topViewController as delegate
        self.topViewController.delegate = self;
    } else if ([[segue identifier] isEqual:@"HUDVCSegue"]) {
        // Sets hudViewController as the destinationViewController
        self.hudViewController = segue.destinationViewController;
        // Sets hudViewController as delegate
        self.hudViewController.delegate = self;
    }
}

- (void)topRevealButtonTapped {
    // Using animation to move topViewController to the right 500pts
    // by changing the constant of the leading and trailing constraints
    [UIView animateWithDuration:0.95 animations:^{
        self.topContainerLeadingConstraint.constant = 500;
        self.topContainerTrailingConstraint.constant = -500;
        [self.view layoutIfNeeded];
    }];
}

- (void)lionsButtonTapped {
    [self.topViewController addLionsToArray];
    [self resetConstraints];
}

- (void)tigersButtonTapped {
    [self.topViewController addTigersToArray];
    [self resetConstraints];
}

#pragma mark - Helper Methods

- (void)resetConstraints {
    // Using animation to move topViewController back to origin by changing the constant property of the leading and trailing constraints
    [UIView animateWithDuration:0.75 animations:^{
        self.topContainerLeadingConstraint.constant = 0;
        self.topContainerTrailingConstraint.constant = 0;
        [self.view layoutIfNeeded];
    }];
}

@end
