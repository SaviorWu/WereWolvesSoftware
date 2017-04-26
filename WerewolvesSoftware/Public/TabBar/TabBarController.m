//
//  TabBarController.m
//  XSF
//
//  Created by sky on 2016/10/26.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "TabBarController.h"
#import "NavigationController.h"
#import "TabBar.h"
#import "UIImage+Image.h"

#import "HomeController.h"
#import "UploadController.h"
#import "FriendController.h"
#import "UserController.h"

@interface TabBarController ()<TabBarDelegate>
{
    BOOL isSelcet;
}
@property (nonatomic, strong) NSMutableArray *items;

@property (nonatomic, weak) HomeController *home;

@property (strong, nonatomic) TabBar *lTabBar;
@end

@implementation TabBarController

- (NSMutableArray *)items
{
    if (_items == nil) {
        _items = [NSMutableArray array];
    }
    return _items;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    isSelcet = YES;
    // 添加所有子控制器
    [self setUpAllChildViewController];
    
    // 自定义tabBar
    [self setUpTabBar];
}
-(void)setUpItemWithBadgeValue:(NSArray*)items{
    for (int i = 0; i < self.items.count; i++) {
        NSString* badgeValueStr = items[i];
        UITabBarItem* item = self.items[i];
        item.badgeValue = badgeValueStr;
    }
}

#pragma mark - 设置tabBar
- (void)setUpTabBar
{
    self.lTabBar = [[TabBar alloc]initWithFrame:self.tabBar.bounds];
    self.lTabBar.backgroundColor = [UIColor clearColor];
    self.lTabBar.delegate = self;
    
    //给tabBar传递tabBarItem模型
    self.lTabBar.items = self.items;
    
    //添加自定义tabBar
    [self.tabBar addSubview:self.lTabBar];
}
#pragma mark - 当点击tabBar上的按钮调用
-(void)tabBar:(TabBar *)tabBar didClickButton:(NSInteger)index
{

//    self.selectedIndex = index;
    isSelcet = NO;
    self.selectedIndex = index;
}
-(void)setSelectedIndex:(NSUInteger)selectedIndex{
    [super setSelectedIndex:selectedIndex];
    if (isSelcet) {
        self.lTabBar.selectIndex = selectedIndex;
    }
    isSelcet = YES;
}

#pragma mark - 添加所有的子控制器
- (void)setUpAllChildViewController
{
    // 1.首页
    HomeController *home = [[HomeController alloc] initWithNibName:@"HomeController" bundle:nil];
    [self setUpOneChildViewController:home image:[UIImage imageNamed:@"App_logo"] selectedImage:[UIImage imageWithOriginalName:@"App_logo"] title:@"首页"];
    
    // 2.上传
    UploadController *upload = [[UploadController alloc] initWithNibName:@"UploadController" bundle:nil];
    [self setUpOneChildViewController:upload image:[UIImage imageNamed:@"App_logo"] selectedImage:[UIImage imageWithOriginalName:@"App_logo"] title:@"上传"];
    
    // 3.好友
    FriendController *friend = [[FriendController alloc] initWithNibName:@"FriendController" bundle:nil];
    [self setUpOneChildViewController:friend image:[UIImage imageNamed:@"App_logo"] selectedImage:[UIImage imageWithOriginalName:@"App_logo"] title:@"好友"];
    
    // 4.我的
    UserController *user = [[UserController alloc] initWithNibName:@"UserController" bundle:nil];
    [self setUpOneChildViewController:user image:[UIImage imageNamed:@"App_logo"] selectedImage:[UIImage imageWithOriginalName:@"App_logo"] title:@"我的"];
    
    
    
}
#pragma mark - 添加一个子控制器
- (void)setUpOneChildViewController:(UIViewController*)vc image:(UIImage*)image selectedImage:(UIImage*)selectedImage title:(NSString*)title
{
    vc.title = title;
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selectedImage;
    
    
    [self.items addObject:vc.tabBarItem];
    
    NavigationController *nav = [[NavigationController alloc] initWithRootViewController:vc];
    //设置导航条颜色
    //    [ITSTools setNavigationBarBackgroundColor];
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"Navagation_Background"] forBarMetrics:UIBarMetricsDefault];
    
    [self addChildViewController:nav];
    
}

@end
