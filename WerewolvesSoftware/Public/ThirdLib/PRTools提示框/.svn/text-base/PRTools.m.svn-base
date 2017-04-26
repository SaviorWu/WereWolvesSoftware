//
//  PRTools.m
//  projectCiQiKou
//
//  Created by Pengrun on 14/12/11.
//  Copyright (c) 2014年 Pengrun. All rights reserved.
//

#import "PRTools.h"
#import "MBProgressHUD.h"
#import "AppDelegate.h"
#define kSPScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kSPScreenHeight [[UIScreen mainScreen] bounds].size.height
#define kSPAPP ((AppDelegate *)[[UIApplication sharedApplication] delegate])
#define MHUDTAG 1000000
@implementation PRTools
/**
 *  HUD
 */
+ (void)showProgressHUD {
    
    MBProgressHUD *progressHud = [[MBProgressHUD alloc] initWithView:kSPAPP.window];
    progressHud.frame = CGRectMake(0, 0, kSPScreenWidth
                                   , kSPScreenHeight);
    //    progressHud.transform = CGAffineTransformMakeRotation(M_PI_2);
    progressHud.tag = MHUDTAG;
    progressHud.dimBackground = NO;
    [progressHud setRemoveFromSuperViewOnHide:YES];
    [progressHud show:YES];
    [kSPAPP.window addSubview:progressHud];;
}

+ (void)showProgressHUD:(NSString *)string
{
    [self showProgressHUDWithText:string font:[UIFont systemFontOfSize:15.f] afterDelay:1.3];
}

+ (void)showProgressHUDWithText:(NSString *)string afterDelay:(NSTimeInterval)time
{
    [self showProgressHUDWithText:string font:[UIFont systemFontOfSize:17.f] afterDelay:time];
}

+ (void)showProgressHUDWithText:(NSString *)string font:(UIFont *)font afterDelay:(NSTimeInterval)time
{
    MBProgressHUD *progressHud = [[MBProgressHUD alloc] initWithView:kSPAPP.window];
    progressHud.tag = MHUDTAG;
    progressHud.dimBackground = YES;
    progressHud.mode = MBProgressHUDModeText;
    progressHud.labelText = string;
    progressHud.labelFont = font;
    [progressHud show:YES];
    [progressHud hide:YES afterDelay:time];
    [kSPAPP.window addSubview:progressHud];
}

+ (void)showProgressHUDWithSucess:(NSString *)string afterDelay:(NSTimeInterval)time
{
    MBProgressHUD *progressHud = [[MBProgressHUD alloc] initWithView:kSPAPP.window];
    progressHud.mode = MBProgressHUDModeCustomView;
    progressHud.tag = MHUDTAG;
    progressHud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"checkmark.png"]];
    progressHud.labelText = NSLocalizedString(string, nil);
    [progressHud show:YES];
    [progressHud hide:YES afterDelay:time];
    [kSPAPP.window addSubview:progressHud];
}


+ (void)hideProgressHUD {
    MBProgressHUD *progressHud = (MBProgressHUD *)[[UIApplication sharedApplication].keyWindow viewWithTag:MHUDTAG];
    if (progressHud) {
        [progressHud hide:YES];
        [progressHud removeFromSuperview];
    }
    [MBProgressHUD hideHUDForView:kSPAPP.window animated:YES];
}

+ (void)hideProgressHUD:(NSTimeInterval)time
{
    MBProgressHUD *progressHud = (MBProgressHUD *)[[UIApplication sharedApplication].keyWindow viewWithTag:MHUDTAG];
    if (progressHud) {
        [progressHud hide:YES afterDelay:time];
//        [progressHud removeFromSuperview];
    }
    [MBProgressHUD hideHUDForView:kSPAPP.window animated:YES];
}

/**
 *  UIAlertView
 */
+ (void)showAlertView:(NSString *)alertMsg
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"提示", nil) message:alertMsg delegate:nil cancelButtonTitle:NSLocalizedString(@"确定", nil) otherButtonTitles: nil];
    [alertView show];
}
@end
