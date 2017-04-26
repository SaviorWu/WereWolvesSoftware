//
//  Tools.h
//  XSF
//
//  Created by sky on 2016/10/28.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+Additions.h"
#import "IQKeyboardManager.h"
#import "UIView+PS.h"
#import "UIImage+ImageOrientataion.h"
#import <UIKit/UIKit.h>
//网络层
#import "ImageView+Loading.h"
#import "UIImageView+WebCache.h"

@interface Tools : NSObject

//拨打电话
+(void)makePhoneCall:(NSString*)phoneNumber;
+(id)LoadXibFile:(NSString*)fileName;
+(NSArray*)getArrayFromplistFile:(NSString*)fileName;
+(NSMutableArray*)getMutableArrayFromplistFile:(NSString*)fileName;
+(void)hiddenKeyBroad;
+(NSString *)URLEncodedString:(NSString *)str;
+(NSString *)URLDecodedString:(NSString *)str;
@end
