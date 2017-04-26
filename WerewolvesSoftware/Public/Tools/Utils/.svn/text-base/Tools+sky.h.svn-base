//
//  Tools+sky.h
//  XSF
//
//  Created by sky on 2016/11/14.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "Tools.h"

@interface Tools (sky)

/**
 *  设置控件边框
 */
+(void)setBianKuang:(UIColor *)color Wide:(CGFloat)wide view:(UIView *)view;

/**
 *  设置图片Riders
 */
+(void)setViewRiders:(UIView *)view riders:(CGFloat)riders;

/**
 *  获取文本内容的size
 */
+(CGSize)getHeightForText:(NSString *)text width:(CGFloat)width fountSize:(CGFloat)fountSize;


/**
 *  创建标签
 */
+(NSMutableArray *)creatMarkViewWithMarkArray:(NSMutableArray*)array superView:(UIView*)view FontSize:(NSInteger)fontSize TextColor:(UIColor*)textColor GroundColor:(UIColor*)groundColor;

/**
 更新标签
 */
+(void)upLoadMarkViewWithMarkViewArray:(NSMutableArray*)array SuperView:(UIView*)view;

/**
 拼接图片地址
 */
+(NSString *)jointUrlPathWithUrlPath:(NSString *)path;

/**
 获取省市区
 */
+(void)setRegionWithProvince:(NSString*)province City:(NSString*)city District:(NSString*)district;

/**
 获取json解析数据
 */
+(id)getJsonDataWithString:(NSString*)str;
/**
 系统默认弹窗
 */
+(void)showAlterWithMsg:(NSString*)msg Controller:(UIViewController*)controller handler:(void (^ __nullable)(UIAlertAction *action))handler;

/**
 设置关注数
 */
+(NSString*)disposeFollowCountWithCount:(NSString*)followCount;
@end
