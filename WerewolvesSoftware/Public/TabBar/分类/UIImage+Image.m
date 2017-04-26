//
//  UIImage+Image.m
//  新浪微博
//
//  Created by 李散 on 15/9/14.
//  Copyright (c) 2015年 cheweishi. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)
+ (instancetype)imageWithOriginalName:(NSString*)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (instancetype)imageWithStretchableName:(NSString*)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    return  [image stretchableImageWithLeftCapWidth:image.size.width*0.5 topCapHeight:image.size.height * 0.5];
}
@end
