//
//  nextViewController.m
//  test_preferredStatusBarStyle
//
//  Created by YoloMao on 2017/2/7.
//  Copyright © 2017年 YoloMao. All rights reserved.
//

#import "nextViewController.h"

@interface nextViewController ()

@end

@implementation nextViewController

#pragma mark - UIViewController Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

//这里就不需要重写 preferredStatusBarStyle 方法了，因为父类 UIViewController 的 preferredStatusBarStyle 方法已经在 runtime 替换了，这里重写了的话就会覆盖掉 替换后的父类 preferredStatusBarStyle 方法。
//- (UIStatusBarStyle)preferredStatusBarStyle {
//    return UIStatusBarStyleDefault;
//}

@end
