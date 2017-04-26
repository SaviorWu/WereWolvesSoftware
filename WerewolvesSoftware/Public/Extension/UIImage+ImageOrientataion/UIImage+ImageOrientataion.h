//
//  UIImage+ImageOrientataion.h
//  XSF
//
//  Created by duck on 16/8/5.
//  Copyright © 2016年 dom.duck. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageOrientataion)

/**
 *处理照相机拍照得到的照片的方向 始终向上
 */
- (UIImage *)fixOrientation:(UIImage *)aImage;
//对图片进行模糊化
- (UIImage *)blurredImageWithRadius:(CGFloat)radius iterations:(NSUInteger)iterations tintColor:(UIColor *)tintColor;
/**
 *将颜色转换为图片
 */
+(UIImage*) createImageWithColor:(UIColor*) color;

/* 加载完图片后block返回 */
+ (void)LoadImage:(NSString*)url successBlock:(void(^)(UIImage* retImage))successblock;

+ (void)LoadImage:(NSString*)url withWidth:(int)width withHeight:(int)height successBlock:(void(^)(UIImage* retImage))successblock;

-(UIImage*)cutImage:(CGRect)rect;
-(UIImage*)ImageScaleToSize:(CGSize)size;
@end
