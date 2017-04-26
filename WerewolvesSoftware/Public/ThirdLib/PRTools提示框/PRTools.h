//
//  PRTools.h
//  projectCiQiKou
//
//  Created by Pengrun on 14/12/11.
//  Copyright (c) 2014年 Pengrun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PRTools : NSObject
/**
 *  HUD
 */
+ (void)showProgressHUD;
+ (void)showProgressHUD:(NSString *)string;
+ (void)showProgressHUDWithText:(NSString *)string afterDelay:(NSTimeInterval)time;
+ (void)showProgressHUDWithSucess:(NSString *)string afterDelay:(NSTimeInterval)time;
//+ (void)showProgressHUDWithText:(NSString *)string font:(UIFont *)font afterDelay:(NSTimeInterval)time;
+ (void)hideProgressHUD;
+ (void)hideProgressHUD:(NSTimeInterval)time;

/**
 *  UIAlertView
 */
+ (void)showAlertView:(NSString *)alertMsg;
@end
