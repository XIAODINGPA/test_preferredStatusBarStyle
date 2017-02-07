//
//  hasNotNavBarViewController.m
//  test_preferredStatusBarStyle
//
//  Created by YoloMao on 2017/2/7.
//  Copyright © 2017年 YoloMao. All rights reserved.
//

#import "hasNotNavBarViewController.h"

@interface hasNotNavBarViewController ()

@end

@implementation hasNotNavBarViewController

#pragma mark - UIViewController Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}

#pragma mark - Actions

- (IBAction)buttonClick:(id)sender {
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"navigationController"];
    [UIApplication sharedApplication].delegate.window.rootViewController = controller;
}

@end
