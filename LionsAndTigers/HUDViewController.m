//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Adam Duflo on 10/9/14.
//  Copyright (c) 2014 Adam Duflo. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - IBActions

- (IBAction)onLionsButtonPressed:(id)sender {
    [self.delegate lionsButtonTapped];
}

- (IBAction)onTigersButtonPressed:(id)sender {
    [self.delegate tigersButtonTapped];
}

@end
