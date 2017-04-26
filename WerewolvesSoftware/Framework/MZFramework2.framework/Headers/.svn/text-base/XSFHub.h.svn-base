//
//  XSFHub.h
//  MZFramework2
//
//  Created by duck on 16/11/2.
//  Copyright © 2016年 MiaoZhuan. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "LKBubbleView.h"
#import "LKBubble.h"
#import "LKBubbleInfo.h"

@interface XSFHub : NSObject
/**
 获取默认的显示成功的泡泡信息对象，可以在此基础之上自定义
 
 @return 泡泡信息描述对象
 */
+ (LKBubbleInfo *)getDefaultRightBubbleInfo;

// 显示加载成功hub
+ (void)showSuccessHub;
// 显示加载失败hub
+ (void)showFailedHub;
// 显示加载失败hub
+ (void)showLoadingHub;
+ (void)showLoadingHub:(NSString*)title;
+ (void)showSuccessTitle:(NSString *)title;
+ (void)showFailedHub:(NSString *)title;
/**
 展示一个带对号的提示信息
 
 @param title         要提示的标题
 @param autoCloseTime 自动关闭的时间
 */
+ (void)showSuccessTitle: (NSString *)title autoCloseTime: (CGFloat)autoCloseTime;

/**
 获取默认的显示加载中的泡泡信息对象，可以在此基础之上自定义
 
 @return 泡泡信息描述对象
 */
+ (LKBubbleInfo *)getDefaultRoundProgressBubbleInfo;

/**
 展示一个圆形的无限循环的进度条
 
 @param title 要提示的标题
 */
+ (void)showRoundProgressWithTitle: (NSString *)title;

/**
 获取默认的显示错误的泡泡信息对象，可以在此基础之上自定义
 
 @return 泡泡信息描述对象
 */
+ (LKBubbleInfo *)getDefaultErrorBubbleInfo;

/**
 展示一个带错误X的提示信息
 
 @param title         提示信息的标题
 @param autoCloseTime 自动关闭的时间
 */
+ (void)showErrorWithTitle: (NSString *)title autoCloseTime: (CGFloat)autoCloseTime;

/**
 展示一个警告框在屏幕底部，可用于显示错误信息的提示框 imageName传nil则使用默认的图片
 */
+ (void)showWarming:(NSString*)title withWarmingImage:(NSString*)imageName;
/**
 隐藏现在显示的泡泡控件
 */
+ (void)hideBubble;
@end
