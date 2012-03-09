//
//  ViewController.m
//  TowPaneViewController
//
//  Created by 能登 要 on 12/03/09.
//  Copyright (c) 2012 いります電算企画. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
{
    __strong UINavigationController* navControllerMaster;
    __strong UINavigationController* navControllerDetail; 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    navControllerMaster = (UINavigationController*)([self.storyboard instantiateViewControllerWithIdentifier:@"master"]);
    [self addChildViewController:navControllerMaster];
    [viewMasterBase addSubview:navControllerMaster.view];
    
    navControllerDetail = (UINavigationController*)([self.storyboard instantiateViewControllerWithIdentifier:@"detail"]);
    [self addChildViewController:navControllerDetail];
    [ViewDetailBase addSubview:navControllerDetail.view];


}

- (void)viewDidUnload
{
    [super viewDidUnload];
    navControllerMaster = nil;
    navControllerDetail = nil; 
    viewMasterBase = nil;
    ViewDetailBase = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
