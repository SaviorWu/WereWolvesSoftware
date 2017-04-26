//
//  Tools+sky.m
//  XSF
//
//  Created by sky on 2016/11/14.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "Tools+sky.h"


@implementation Tools (sky)

#pragma mark - 设置边框
+(void)setBianKuang:(UIColor *)color Wide:(CGFloat)wide view:(UIView *)view
{
    view.layer.borderColor = [color CGColor];
    view.layer.borderWidth = wide;
}
#pragma mark - 设置弧度
+(void)setViewRiders:(UIView *)view riders:(CGFloat)riders
{
    view.layer.masksToBounds = YES;
    view.layer.cornerRadius = riders;
}

#pragma mark - 获取文本内容的size
+ (CGSize)getHeightForText:(NSString *)text width:(CGFloat)width fountSize:(CGFloat)fountSize
{
    CGSize size;
    NSDictionary *attrbute = @{NSFontAttributeName:[UIFont systemFontOfSize:fountSize]};
    size = [text boundingRectWithSize:CGSizeMake(width, 100000) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attrbute context:nil].size;
    return size;
}

#pragma mark - 更新标签
+(void)upLoadMarkViewWithMarkViewArray:(NSMutableArray*)array SuperView:(UIView*)view{
    for (UIView *lView in view.subviews) {
        [lView removeFromSuperview];
    }
}
+(NSString *)returnFormatString:(NSString *)str
{
    return [str stringByReplacingOccurrencesOfString:@" "withString:@""];
}
#pragma mark - 拼接图片地址
+(NSString *)jointUrlPathWithUrlPath:(NSString *)path{
//    NSString *url = [path stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSRange rang = [path rangeOfString:@"http"];
    if (rang.location == NSNotFound) {
        //path = [NSString stringWithFormat:@"%@%@",IMAGE_PATH,path];
    }
    return [self returnFormatString:path];
}


#pragma mark -  获取json解析数据
+(id)getJsonDataWithString:(NSString*)str{
    
    NSData *data=[str dataUsingEncoding:NSUTF8StringEncoding];
    
    NSError *error = nil;
    
    if ([str length] > 0 && error == nil){
        id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        return jsonObject;
    }
    return nil;
}
#pragma mark -  系统默认弹窗
+(void)showAlterWithMsg:(NSString*)msg Controller:(UIViewController*)controller handler:(void (^ __nullable)(UIAlertAction *action))handler{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:msg message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        handler(action);
    }];
    [alertController addAction:okAction];
    [controller presentViewController:alertController animated:YES completion:nil];
}

#pragma mark - 设置关注数
+(NSString*)disposeFollowCountWithCount:(NSString*)followCount{
    NSString *countStr;
    NSInteger count = [followCount integerValue];
    if (count > 999) {
        countStr = @"999+";
    }else{
        countStr = followCount;
    }
    return countStr;
}
@end
