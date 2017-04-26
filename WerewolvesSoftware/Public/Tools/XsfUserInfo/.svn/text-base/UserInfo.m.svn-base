//
//  UserInfo.m
//  XSF
//
//  Created by duck on 16/11/2.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "UserInfo.h"

static UserInfo *getInstance = nil;
@implementation UserInfo

+ (instancetype)getInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!getInstance)
        {
            getInstance = [[UserInfo alloc] init];
            getInstance.bLogin              = NO;
            getInstance.bIsBusiness         = NO;
            getInstance.userHeadImage       = @"";
            getInstance.userNickName        = @"";
            getInstance.userID              = @"";
            getInstance.userSign            = @"";
            getInstance.userStatus          = @"";
            getInstance.userAccount         = @"";
            getInstance.tradePwdStatus      = @"";
            getInstance.realNameStatus      = @"";
            getInstance.userRoleId          = @"";
            getInstance.userRealName        = @"";
            getInstance.userIDAccount       = @"";
            getInstance.userRoleName        = @"";
            getInstance.consumerHotline     = @"";
            getInstance.persionCode         = @"";
            getInstance.firmKeyAppid        = @"";
            getInstance.userIsEnterprise    = @"";
            getInstance.waitForPay          = @"";
            getInstance.canCheckOutMoney    = @"";
            getInstance.userNetWork         = @"";
            getInstance.appVersion          = @"";
            getInstance.isSubAccount        = @"";
            
            getInstance.deviceID            = @"";
            getInstance.deviceInfo          = @"";
            getInstance.userLng             = @"";
            getInstance.userLat             = @"";
            getInstance.userUp              = @"";
            getInstance.userUc              = @"";
            getInstance.userUd              = @"";
            getInstance.userJPUSHID         = @"";
            
            getInstance.videoStatus         = @"0";
            getInstance.bIsBusiness         = NO;
            getInstance.bRealNameCheck      = NO;
            
            getInstance.userLabel           = [[NSMutableArray alloc] init];
        }
    });
    return getInstance;
}
+ (void)reset
{
    getInstance.bLogin              = NO;
    getInstance.bIsBusiness         = NO;
    getInstance.userHeadImage       = @"";
    getInstance.userNickName        = @"";
    getInstance.userID              = @"";
    getInstance.userSign            = @"";
    getInstance.userStatus          = @"";
    getInstance.userAccount         = @"";
    getInstance.realNameStatus      = @"1";
    getInstance.userRoleId          = @"";
    getInstance.userRoleName        = @"";
    getInstance.consumerHotline     = @"";
    getInstance.persionCode         = @"";
    getInstance.firmKeyAppid        = @"";
    getInstance.userIsEnterprise    = @"";
    getInstance.waitForPay          = @"";
    getInstance.canCheckOutMoney    = @"";
//    getInstance.userNetWork         = @"";
    getInstance.appVersion          = @"";
    getInstance.userRealName        = @"";
    getInstance.userIDAccount       = @"";
    getInstance.tradePwdStatus      = @"0";
    getInstance.deviceID            = @"";
    getInstance.deviceInfo          = @"";
    getInstance.userLng             = @"";
    getInstance.userLat             = @"";
    getInstance.userUp              = @"";
    getInstance.userUc              = @"";
    getInstance.userUd              = @"";
    getInstance.isSubAccount        = @"";
    
    getInstance.videoStatus         = @"0";
    getInstance.bIsBusiness         = NO;
    getInstance.bRealNameCheck      = NO;
    
    getInstance.userLabel           = [[NSMutableArray alloc] init];
    
    NSUserDefaults* myDefault = [NSUserDefaults standardUserDefaults];
    [myDefault removeObjectForKey:@"userID"];
    [myDefault removeObjectForKey:@"userHeadImage"];
    [myDefault removeObjectForKey:@"userStatus"];
    [myDefault removeObjectForKey:@"userSign"];
    [myDefault removeObjectForKey:@"userNickName"];
    [myDefault removeObjectForKey:@"userAccount"];
    [myDefault removeObjectForKey:@"tradePwdStatus"];
    [myDefault removeObjectForKey:@"realNameStatus"];
    [myDefault removeObjectForKey:@"userRoleId"];
    [myDefault removeObjectForKey:@"userRoleName"];
    [myDefault removeObjectForKey:@"pushLabel"];
    [myDefault synchronize];
}
@end
