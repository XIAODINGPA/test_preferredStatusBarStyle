//
//  UIViewController+statusBarStyle.h
//  test_preferredStatusBarStyle
//
//  Created by YoloMao on 2017/2/7.
//  Copyright © 2017年 YoloMao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (statusBarStyle)

/*
 使用 runtime 需要注意：
 对应的 UIViewController 子类不需要重写 preferredStatusBarStyle 方法的，否则不会调用方法替换后的自定义方法。
 */
@end
