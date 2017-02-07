//
//  hasNavBarViewController.m
//  test_preferredStatusBarStyle
//
//  Created by YoloMao on 2017/2/7.
//  Copyright © 2017年 YoloMao. All rights reserved.
//

#import "hasNavBarViewController.h"

@interface hasNavBarViewController ()

@end

@implementation hasNavBarViewController

#pragma mark - UIViewController Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    //这些方法会报警告，所以强迫症表示，不用了（而且最低支持 iOS 7，用户手机系统适配方面没问题）
//    [[UIApplication sharedApplication]setStatusBarHidden:YES];
//    [[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

#pragma mark - Actions

- (IBAction)buttonClick:(id)sender {
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"hasNotNavBarViewController"];
    [UIApplication sharedApplication].delegate.window.rootViewController = controller;
}

@end
