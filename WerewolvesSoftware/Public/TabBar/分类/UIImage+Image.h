//
//  UIImage+Image.h
//  新浪微博
//
//  Created by 李散 on 15/9/14.
//  Copyright (c) 2015年 cheweishi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Image)

+ (instancetype)imageWithOriginalName:(NSString*)imageName;

+ (instancetype)imageWithStretchableName:(NSString*)imageName;
@end
