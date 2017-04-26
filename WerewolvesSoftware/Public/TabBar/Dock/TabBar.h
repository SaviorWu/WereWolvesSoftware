//
//  TabBar.h
//  XSF
//
//  Created by sky on 2016/10/26.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TabBar;

@protocol TabBarDelegate <NSObject>
@optional
- (void)tabBar:(TabBar *)tabBar didClickButton:(NSInteger)index;

@end

@interface TabBar : UIView

//items:保存每一个按钮对应tabBarItem模型
@property (nonatomic, strong) NSArray* items;

@property (nonatomic, assign) NSInteger selectIndex;

@property (nonatomic, weak) id<TabBarDelegate>delegate;

@end
