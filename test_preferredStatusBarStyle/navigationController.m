//
//  navigationController.m
//  test_preferredStatusBarStyle
//
//  Created by YoloMao on 2017/2/7.
//  Copyright © 2017年 YoloMao. All rights reserved.
//

#import "navigationController.h"

@interface navigationController ()

@end

@implementation navigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//当设置了 childViewControllerForStatusBarStyle 后，不会进入这里
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}

//以 topViewController 的 preferredStatusBarStyle 来设置 statusBarStyle
- (UIViewController *)childViewControllerForStatusBarStyle {
    return self.topViewController;
}

@end
