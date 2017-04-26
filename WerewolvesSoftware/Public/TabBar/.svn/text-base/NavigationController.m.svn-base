//
//  NavigationController.m
//  XSF
//
//  Created by sky on 2016/10/26.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "NavigationController.h"
#import "TabBarController.h"
#import "TabBar.h"

@interface NavigationController ()<UINavigationControllerDelegate>

@property (nonatomic, strong) id popDelegate;

@end

@implementation NavigationController

+ (void)initialize
{
    // 获取当前类下面的UIBarButtonItem
    UIBarButtonItem *item = [UIBarButtonItem appearanceWhenContainedIn:self, nil];
    
    // 设置导航条按钮的文字颜色
    NSMutableDictionary *titleAttr = [NSMutableDictionary dictionary];
    titleAttr[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [item setTitleTextAttributes:titleAttr forState:UIControlStateNormal];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _popDelegate = self.interactivePopGestureRecognizer.delegate;
    self.delegate = self;
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(nonnull UIViewController *)viewController animated:(BOOL)animated
{
    
//    id rootView = [UIApplication sharedApplication].keyWindow.rootViewController;
//    if ([rootView isKindOfClass:[UITabBarController class]]) {
//        UITabBarController *tabBarVc = (UITabBarController *)rootView;
//        if (tabBarVc.tabBar.subviews.count) {
//            //删除系统自带的tabBarButton
//            for (UIView *tabBarButton in tabBarVc.tabBar.subviews) {//uitabBarButton
//                if (![tabBarButton isKindOfClass:[TabBar class]]) {
//                    [tabBarButton removeFromSuperview];
//                }
//            }
//        }
//    }
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count) { // 不是根控制器
        
        viewController.hidesBottomBarWhenPushed = YES;
        
    }
    [super pushViewController:viewController animated:animated];
}
- (void)popToPre
{
    [self popViewControllerAnimated:YES];
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (viewController == self.viewControllers[0]) {//是根控制器
        id rootView = [UIApplication sharedApplication].keyWindow.rootViewController;
        UITabBarController *tabBarVc = (UITabBarController *)rootView;
        if (tabBarVc.tabBar.subviews.count) {
            //删除系统自带的tabBarButton
            for (UIView *tabBarButton in tabBarVc.tabBar.subviews) {//uitabBarButton
                if (![tabBarButton isKindOfClass:[TabBar class]]) {
                    [tabBarButton removeFromSuperview];
                }
            }
        }
        self.interactivePopGestureRecognizer.delegate = nil;
        
    }else{
        
        self.interactivePopGestureRecognizer.delegate = _popDelegate;
        
    }
    
}

@end
