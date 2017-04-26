//
//  TabBarController.h
//  XSF
//
//  Created by sky on 2016/10/26.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBar.h"
@interface TabBarController : UITabBarController

//设置秒圈导航（状态）
-(void)setUpItemWithBadgeValue:(NSArray*)items;
-(void)tabBar:(TabBar *)tabBar didClickButton:(NSInteger)index;
@end
