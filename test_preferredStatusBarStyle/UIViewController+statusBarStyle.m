//
//  UIViewController+statusBarStyle.m
//  test_preferredStatusBarStyle
//
//  Created by YoloMao on 2017/2/7.
//  Copyright © 2017年 YoloMao. All rights reserved.
//

#import "UIViewController+statusBarStyle.h"
#import <objc/runtime.h>
#import "nextViewController.h"

@implementation UIViewController (statusBarStyle)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        SEL originalSelector = @selector(preferredStatusBarStyle);
        SEL swizzledSelector = @selector(customPreferredStatusBarStyle);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        BOOL didAddMethod =
        class_addMethod(class,
                        originalSelector,
                        method_getImplementation(swizzledMethod),
                        method_getTypeEncoding(swizzledMethod));
        
        if (didAddMethod) {
            class_replaceMethod(class,
                                swizzledSelector,
                                method_getImplementation(originalMethod),
                                method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

- (UIStatusBarStyle)customPreferredStatusBarStyle {
    
    //nextViewController 改成 UIStatusBarStyleDefault
    if ([self isKindOfClass:[nextViewController class]]) {
        return UIStatusBarStyleDefault;
    }
    
    //其他没重写的子类全改成 UIStatusBarStyleLightContent （这个工程中只有 nextViewController 没重写，所以只有 nextViewController 会进这个方法里，其他的页面不会）
    return UIStatusBarStyleLightContent;
}

@end
