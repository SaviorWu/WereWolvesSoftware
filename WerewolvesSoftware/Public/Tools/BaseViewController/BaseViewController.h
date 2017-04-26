//
//  BaseViewController.h
//  XSF
//
//  Created by duck on 16/10/21.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MJRefresh.h"


@interface BaseViewController : UIViewController

/** 上下拉刷新TableView   */
@property(nonatomic, strong) IBOutlet   UITableView     *refreshTableView;

/** 是否有下拉刷新         */
@property(nonatomic, assign) BOOL            tableHasHeader;

/** 是否有上拉刷新         */
@property(nonatomic, assign) BOOL            tableHasFooter;



/**
 创建TableViewCell声明

 @param name Cell类名
 */
-(void)registerNibWithName:(NSString*)name;

/*
 *  设置VC右上的更多按钮，图片支持自定义，但需要注意，需要自己实现点击事件方法
 *  - (void)onNavigationRightItem:(UIButton *)button
 */
//- (void)setupRightBarButtonWithImage:(NSString *)imageName;
- (void)setRightBarButtonItemWithImageName:(NSString *)imageName;

/**
 对userid 和token 进行编码拼接到URL上

 @param urlStr  URL

 @return 拼接的URL
 */
- (NSString *)urlEncodingUTF8Str:(NSString *)urlStr;
//设置返回按钮
- (void)setBackBarButtonItem;
// 设置返回按钮为灰白色
-(void)setWhiteBackBarButtonItem;
// 左边创建两个按钮（主要用于web页面）
-(void)setWebBackBarButtonItem;
-(void)setupRightBarButtonItemWithImages:(NSArray *)imageNames;
// 自定义navigation的title颜色
- (void)setTitleColor:(UIColor*)titleColor;
/* 隐藏返回按钮 */
- (void)hiddenBackButton;
/** 下拉刷新 */
- (void)tableRefresh;

/** 上拉加载更多 */
- (void)tableRefreshLoad;

/** 停止刷新或加载 */
-(void)endRefreshing;

///** 隐藏上下拉刷新 */
//- (void)hiddenRefresh;

// 隐藏上拉加载
- (void)hiddenFooter;

//显示下拉刷新
//- (void)showTableRefresh;

/** 点击导航栏右边按钮事件 */
-(void)onItemClick:(id)sender;
/** 重写返回事件 */
-(void)onBackClick:(id)sender;

-(void)setRightBarButtonItemWithTitle:(NSString *)title withColor:(UIColor*)textColor;

//是否透明导航栏
- (void)transparentNavigationBar:(BOOL)isTransparent;
//设置导航栏颜色
- (void)transparentNavigationBarColor:(UIColor *)navBarColor shadowColor:(UIColor *)shadowColor translucent:(BOOL) translucent;

@end
